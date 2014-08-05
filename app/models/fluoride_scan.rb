class FluorideScan < ActiveRecord::Base
  validates_presence_of :location, :user_id

  belongs_to :user
end
