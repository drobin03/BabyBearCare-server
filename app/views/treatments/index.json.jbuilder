json.array!(@treatments) do |treatment|
  json.extract! treatment, :id, :water_source_id, :treatment_chemical_id
  json.url treatment_url(treatment, format: :json)
end
