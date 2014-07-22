class Mineral < ActiveRecord::Base
  has_many :mineral_tests
  has_many :water_sources, through: :mineral_tests

  validates_presence_of :name, :max_dosage

end
