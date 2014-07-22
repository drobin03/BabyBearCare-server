json.array!(@treatment_chemicals) do |treatment_chemical|
  json.extract! treatment_chemical, :id, :name
  json.url treatment_chemical_url(treatment_chemical, format: :json)
end
