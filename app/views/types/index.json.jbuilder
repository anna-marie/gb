json.array!(@types) do |type|
  json.extract! type, :content
  json.url type_url(type, format: :json)
end