json.array!(@pdfs) do |pdf|
  json.extract! pdf, :id, :name
  json.url pdf_url(pdf, format: :json)
end
