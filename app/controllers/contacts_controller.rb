class ContactsController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create]
  before_action :check_if_admin, only: [:destroy, :index]

  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    logger.debug "Contact params: #{contact_params.inspect}" # Log for debugging

    if @contact.save
      redirect_to accueil_path, notice: "Votre message a été envoyé avec succès."
    else
      render :new
    end
  end

  def destroy
    @contact = Contact.find(params[:id])

    if @contact.destroy
      redirect_to contacts_path, notice: "Contact supprimé avec succès."
    else
      redirect_to contacts_path, alert: "Le contact n'a pas pu être supprimé."
    end
  end

  private

  def check_if_admin
    redirect_to(accueil_path) unless current_user.admin?
  end

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
