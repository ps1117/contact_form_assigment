class ContactFormsController < ApplicationController

	def submit_contact_details
		@contact_form = ContactForm.new(contact_form_params)
		@contact_form.save
		EmailerMailer.contact_request(@contact_form).deliver_now
		EmailerMailer.thank_you_mail(@contact_form).deliver_now
		respond_to do |format|
      format.js
    end
	end

  private

  def contact_form_params
    params.permit(:first_name, :email, :mobile_no, :last_name, :message)
  end
end
