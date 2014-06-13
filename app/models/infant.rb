class Infant < ActiveRecord::Base
  belongs_to :user
  
  validates_presence_of :user_id, :first_name, :last_name, :weight, :gender, :date_of_birth, :due_date, :birth_weight, :multiple_birth

end
