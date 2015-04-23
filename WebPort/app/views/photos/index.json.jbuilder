json.array!(@photos) do |photo|
  json.extract! photo, :id, :name, :info
  json.url photo_url(photo, format: :json)
end
