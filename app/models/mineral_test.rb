class MineralTest < ActiveRecord::Base
  belongs_to :water_source
  belongs_to :mineral

  validates_presence_of :water_source, :mineral, :test_date, :measurement
end
