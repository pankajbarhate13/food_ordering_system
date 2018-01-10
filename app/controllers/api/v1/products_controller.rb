class Api::V1::ProductsController < ApplicationController

	# API for product details
	# url: http://localhost:3000/api/v1/products/:id
	def show
		@product = Item.find_by_id(params[:id])
		if @product.present?
			render :product
		else
			render json: { status: 404, :message => "Record Not Found" }
		end
	end


	# API for all products details
	# url: http://localhost:3000/api/v1/products
	def index
		@products = Item.all
		if @products.present?
			render :products
		else
			render json: { status: 404, :message => "Record Not Found" }
		end
	end

end
