class Role < ActiveRecord::Base
  validates_presence_of :name, :role
  has_many :user_roles
  has_many :users, through: :user_roles
end
