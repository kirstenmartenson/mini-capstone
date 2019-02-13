class ProductsController < ApplicationController
  
  def index
    @products = Product.all
    render 'index.html.erb'
  end

  def new
    @users = User.all
    render 'new.html.erb'
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      user_id: params[:user_id]
    )
    @product.save
    redirect_to "/products/#@product.id}"
  end

  def edit
    @users = User.all
    @product = Product.find(params[:id])
  end


  def update
    @product = Product.find(params[:id])

    @product.name = params[:name],
    @product.price = params[:price],
    @product.description = params[:description]
    @recipe.user_id = params[:user_id]

    @product.save
    redirect_to "/products/#@product.id}"
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to "/products"
  end
end
