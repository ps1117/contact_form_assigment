class ContactForm < ApplicationRecord
	validates :first_name, :mobile_no, :email, :last_name, :message, presence: true
	validates :mobile_no, numericality: true


	def get_name
		"#{first_name} #{last_name}".titleize
	end
end
