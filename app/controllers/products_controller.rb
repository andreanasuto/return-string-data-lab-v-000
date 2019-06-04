class ProductsController < ApplicationController
  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to products_path
  end

  def index
    
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :inventory, :description)
  end
end
