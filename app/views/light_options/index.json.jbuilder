json.array!(@light_options) do |light_option|
  json.extract! light_option, :content
  json.url light_option_url(light_option, format: :json)
end