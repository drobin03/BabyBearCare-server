class WaterSource < ActiveRecord::Base
  has_many :treatments
  has_many :treatment_chemicals, through: :treatments
  
  validates_presence_of :watershed, :name, :city, :latitude, :longitude, :type, :standard_geographic_code
end
