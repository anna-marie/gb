json.array!(@layers) do |layer|
  json.extract! layer, :content
  json.url layer_url(layer, format: :json)
end