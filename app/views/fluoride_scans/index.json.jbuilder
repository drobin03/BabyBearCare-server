json.array!(@fluoride_scans) do |fluoride_scan|
  json.extract! fluoride_scan, :id, :location, :water_type, :bar_code
  json.url fluoride_scan_url(fluoride_scan, format: :json)
end
