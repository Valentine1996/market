json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :rating, :address_id, :merchant_id
  json.url customer_url(customer, format: :json)
end
