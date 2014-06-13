require 'spec_helper'

describe Infant do
  subject { create :infant }

  context "validations" do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :weight }
    it { should validate_presence_of :postal_code }
    it { should validate_presence_of :gender }
    it { should validate_presence_of :date_of_birth }
    it { should validate_presence_of :due_date }
    it { should validate_presence_of :birth_weight }
    it { should validate_presence_of :multiple_birth }
  end
end
