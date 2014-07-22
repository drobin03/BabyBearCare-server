json.array!(@mineral_tests) do |mineral_test|
  json.extract! mineral_test, :id, :water_source_id, :mineral_id, :test_date, :measurement
  json.url mineral_test_url(mineral_test, format: :json)
end
