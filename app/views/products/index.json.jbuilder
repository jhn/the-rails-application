json.array!(@products) do |product|
  json.extract! product, :id, :brand, :price, :best_selling
  json.url product_url(product, format: :json)
end
