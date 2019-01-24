class Api::ProductsController < ApplicationController
  # def all_products_method
  #   @products = Product.all #array of hashes
  #   render 'all_products.json.jbuilder'
  # end

  # def first_product_method
  #   @product = Product.first
  #   render 'first_product.json.jbuilder'
  # end

  # def second_product_method
  #   @product = Product.second
  #   render 'second_product.json.jbuilder'
  def index
    @products = Product.all
    render 'index.json.jbuilder'
  end

  def show
    @product = Product.find_by(id:params['id'])
    render 'show.json.jbuilder'
  end  

  def create 
    @product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"]
)
    @product.save
    render 'show.json.jbuilder'
  end

  def update
    @product = Product.find(params[:id])

      @product.name = params["name"] || @product.name
      @product.price = params["price"] || @product.price
      @product.image_url = params["image_url"]|| @product.image_url
      @product.description = params["description"] || @product.description

      @recipe.save

      render 'show.json.jbuilder'
  end

  def destroy
    @produuct = Product.find(params[:id])
    @product.destroy
    render json: {message: "Product is successfully destroyed."}
  end

end
