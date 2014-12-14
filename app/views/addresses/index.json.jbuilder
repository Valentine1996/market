json.array!(@addresses) do |address|
  json.extract! address, :id, :country, :city, :street, :number
  json.url address_url(address, format: :json)
end
