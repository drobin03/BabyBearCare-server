class WaterSource < ActiveRecord::Base
  has_many :treatments
  has_many :treatment_chemicals, through: :treatments

  has_many :mineral_tests
  has_many :minerals, through: :mineral_tests

  has_many :fluoride_scans
  
  validates_presence_of :watershed, :name, :city, :water_source_type, :standard_geographic_code
end
