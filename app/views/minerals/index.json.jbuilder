json.array!(@minerals) do |mineral|
  json.extract! mineral, :id, :name, :max_dosage
  json.url mineral_url(mineral, format: :json)
end
