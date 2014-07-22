class Treatment < ActiveRecord::Base
  belongs_to :water_source
  belongs_to :treatment_chemical

  validates_presence_of :water_source_id, :treatment_chemical_id
end
