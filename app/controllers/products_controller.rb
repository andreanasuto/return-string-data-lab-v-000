class ProductsController < ApplicationController
  def create
    @product = Product.new(product_params)
  end
end
