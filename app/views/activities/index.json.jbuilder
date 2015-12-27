json.array!(@activities) do |activity|
  json.extract! activity, :id, :name, :focus, :weight
  json.url activity_url(activity, format: :json)
end
