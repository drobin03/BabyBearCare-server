class UserRole < ActiveRecord::Base
  validates_presence_of :role_id, :user_id

  belongs_to :user
  belongs_to :role

end
