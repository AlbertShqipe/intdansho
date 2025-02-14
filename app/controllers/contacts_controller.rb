class ContactsController < ApplicationController
  def send_email
    contact_params = params.require(:contact).permit(:name, :email, :message)

    if contact_params.values.all?(&:present?)
      ContactMailer.contact_email(contact_params[:name], contact_params[:email], contact_params[:message]).deliver_now
      flash[:notice] = "Your message has been sent successfully!"
    else
      flash[:alert] = "All fields are required."
    end

    redirect_to root_path
  end
end
