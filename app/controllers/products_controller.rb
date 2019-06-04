class ProductsController < ApplicationController
  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to products_path
  end

  def index

  end

  def inventory
    @product = Product.find(params[:id])
    render plain: @product.inventory != 0 ? true : false
  end

  def description
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :inventory, :description)
  end
end
