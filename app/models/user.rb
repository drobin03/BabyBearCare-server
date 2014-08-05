class User < ActiveRecord::Base
  acts_as_authentic

  # def self.public_columns
  #   [ :id, :login, :email, :password, :password_confirmation ]
  # end

  validates_presence_of :email

  has_many :infants
  has_many :fluoride_scans

  has_many :user_roles
  has_many :roles, through: :user_roles
  accepts_nested_attributes_for :infants, reject_if: :all_blank, allow_destroy: true

  def role?(role)
    !!self.roles.find_by_role(role.to_s)
  end
end
