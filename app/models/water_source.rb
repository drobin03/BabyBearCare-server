class WaterSource < ActiveRecord::Base
  validates_presence_of :watershed, :name, :city, :latitude, :longitude, :type, :standard_geographic_code
end
