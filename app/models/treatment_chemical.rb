class TreatmentChemical < ActiveRecord::Base
  has_many :treatments
  has_many :water_sources, through: :treatments
end
