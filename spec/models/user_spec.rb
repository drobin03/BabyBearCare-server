require 'spec_helper'

describe User do
  subject { create :user }

  context "associations" do
    it { should have_many :infants }
  end
  
  context "validations" do
    it { should validate_presence_of :email }
  end    
end
