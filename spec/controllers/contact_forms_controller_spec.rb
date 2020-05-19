require 'rails_helper'

RSpec.describe ContactFormsController, type: :controller do

  describe "POST submit_contact_details" do
    context 'POST #submit_contact_details' do
     
      it 'create a new contact' do
        params = {
          first_name: 'Payal',
          last_name: "Sharma",
          mobile_no: "1234567891",
          email: "payal@gmail.com",
          message: "Hello world"
        }
        expect { post(:submit_contact_details, params: { contact_form: params }, format: :js) }
      end
    end 
  end
  
end