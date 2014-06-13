require 'spec_helper'

describe "Infants" do
  subject { create :infant }

  context "associations" do
    it { should belong_to :user }
  end

  context "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :weight }
    it { should validate_presence_of :gender }
    it { should validate_presence_of :date_of_birth }
    it { should validate_presence_of :due_date }
    it { should validate_presence_of :birth_weight }
    it { should validate_presence_of :multiple_birth }
  end
  
end
