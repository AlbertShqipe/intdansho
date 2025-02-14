class ContactMailer < ApplicationMailer
  default to: "internationaldanceshow@gmail.com" # This is the email address that the contact form will be sent to

  def contact_email(name, email, message)
    @name = name
    @message = message
    @email = email

    mail(
      from: 'no-reply@internationaldanceshow.com',
      subject: "Nouveau message de #{@name}, #{@email}"
      bcc: "albert_nikolli@icloud.com"
    )
  end
end
