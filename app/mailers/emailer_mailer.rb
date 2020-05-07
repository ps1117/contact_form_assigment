class EmailerMailer < ApplicationMailer

	def contact_request(contact_form)
    @contact_form = contact_form
    mail(to: "info@ajackus.com", subject: "New Contact Request")
  end

  def thank_you_mail(contact_form)
    @contact_form = contact_form
  	mail(from: "info@ajackus.com", to: contact_form.try(:email), subject: "Thank you for Contacting Us")
  end
end
