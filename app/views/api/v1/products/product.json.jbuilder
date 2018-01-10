json.product do
  json.id @product.id
  json.name @product.name
  json.description @product.description
  json.price @product.price
  json.category do
	 category = Category.find(@product.category_id)
	 json.category_id category.id
	 json.category_name category.name
  end
end

json.status 200
json.message 'Product details'
