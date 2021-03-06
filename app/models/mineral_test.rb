class MineralTest < ActiveRecord::Base
  belongs_to :water_source
  belongs_to :mineral

  validates_presence_of :water_source, :mineral, :test_date, :measurement

  scope :water_source, -> (water_source_id) { where water_source_id: water_source_id }
  scope :mineral, -> (mineral_name) { where mineral_id: Mineral.find_by(name: mineral_name).id }
end
