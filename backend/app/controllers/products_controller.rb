class ProductsController < ApplicationController
	def index
		products = Product.order('created_at DESC')
		render json: {
			status: 200,
			message: 'success',
			data: products
		}
	end

	def show
		product = Product.find(params[:id])
		render json: {
			status: 200,
			message: 'success',
			data: product 
		}
		rescue
			render json: {
				status: 400,
				message: 'error'
			}
	end

	def create
		product = Product.new(product_params true)
		product.save!
		render json: {
			status: 200,
			message: 'success'
		}
		rescue
			render json: {
				status: 400,
				message: product.errors.messages
			}
	end

	def update
		product = Product.find(params[:id])
		updateParams = product_params
		if params.has_key?(:photo)
			updateParams = product_params true
		end
		product.update!(updateParams)
		render json: {
			status: 200,
			message: "success"
		}
		rescue
			render json: {
				status: 400, 
				message: product.errors.messages
			}
	end

	def destroy
		product = Product.find(params[:id])
		product.destroy
		render json: {
			status: 200, 
			message: 'success'
		}
		rescue
			render json: {
				status: 400,
				message: 'error'
			}
	end
	private
		def product_params(photo=false)
			data = {
				name: params[:name],
				price: params[:price],
				describe: params[:describe],
			}
			if photo
				data.merge!({
					photo: Base64.encode64(params[:photo].read),
					photo_type: params[:photo].content_type
				})
			end
			data
		end
end
