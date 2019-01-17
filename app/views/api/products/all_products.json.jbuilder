json.array! @products.each do |product|
    json.id product.id
    json.name