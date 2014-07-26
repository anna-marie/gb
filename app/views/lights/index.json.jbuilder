json.array!(@lights) do |light|
  json.extract! light, :content
  json.url light_url(light, format: :json)
end