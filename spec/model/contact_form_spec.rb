require 'rails_helper'

describe ContactForm, type: :model do

  describe 'validations' do
    subject { FactoryGirl.build(:contact_form) }
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:mobile_no) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:message) }
  end
end