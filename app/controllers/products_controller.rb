class ProductsController < ApplicationController
  before_action :find_product, only: [:show]

  def index
    @products = Product.paginate(page: params[:page],
      per_page: Settings.page_product_size).order(id: :desc)
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
