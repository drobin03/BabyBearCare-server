class FluorideScan < ActiveRecord::Base
  validates_presence_of :water_source_id, :infant_id

  belongs_to :infant
  belongs_to :water_source
end
