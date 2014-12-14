json.array!(@products) do |product|
  json.extract! product, :id, :name, :maker, :color, :price
  json.url product_url(product, format: :json)
end
