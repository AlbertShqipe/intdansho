class ContactsController < ApplicationController
  def send_email
    # Ensure required params are present
    name = params[:name]
    email = params[:email]
    message = params[:message]

    if name.present? && email.present? && message.present?
      # Use ActionMailer to send the email
      ContactMailer.contact_email(name, email, message).deliver_now
      flash[:notice] = "Votre email a été envoyé avec succès !"
    else
      flash[:alert] = "Tous les champs sont requis."
    end

    redirect_to accueil_path
  end
end
