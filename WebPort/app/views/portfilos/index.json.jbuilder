json.array!(@portfilos) do |portfilo|
  json.extract! portfilo, :id, :name, :info
  json.url portfilo_url(portfilo, format: :json)
end
