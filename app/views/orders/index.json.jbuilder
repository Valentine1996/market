json.array!(@orders) do |order|
  json.extract! order, :id, :orderdate, :perfomance, :customer_id
  json.url order_url(order, format: :json)
end
