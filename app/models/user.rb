class User < ActiveRecord::Base
  acts_as_authentic

  # def self.public_columns
  #   [ :id, :login, :email, :password, :password_confirmation ]
  # end

  validates_presence_of :email

  has_many :infants
  accepts_nested_attributes_for :infants, reject_if: :all_blank, allow_destroy: true
end
