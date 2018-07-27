class ProductsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :find_product, only: [:show]
  def index
    @products = Product.all
  end

  def show
  end

  private

  def find_product
    @product = Product.find(params[:id])
    unless @product
      flash[:danger] =  "Product not found!"
      redirect_to not_found_index_path
    end
  end
end
