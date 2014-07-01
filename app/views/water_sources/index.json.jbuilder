json.array!(@water_sources) do |water_source|
  json.extract! water_source, :id, :watershed, :name, :city, :latitude, :longitude, :type, :standard_geographic_code
  json.url water_source_url(water_source, format: :json)
end
