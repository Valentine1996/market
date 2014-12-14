json.array!(@orders) do |order|
  json.extract! order, :id, :orderdate, :performance, :customer_id
  json.url order_url(order, format: :json)
end
