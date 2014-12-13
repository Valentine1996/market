json.array!(@addresses) do |address|
  json.extract! address, :id, :country, :city, :street, :buildNumber
  json.url address_url(address, format: :json)
end
