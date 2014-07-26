json.array!(@rails) do |rail|
  json.extract! rail, :destroy, :scaffold, :LightOptions
  json.url rail_url(rail, format: :json)
end