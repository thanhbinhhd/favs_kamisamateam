class ProductsController < ApplicationController
  before_action :find_product, only: [:show]

  def index
    @products = Product.paginate(page: params[:page],
      per_page: Settings.page_product_size).order(id: :asc)
  end

  def show
  end

  private

  def find_product
    @product = Product.find(params[:id])
    unless @product
      flash[:danger] = t "not_found.product"
      redirect_to not_found_index_path
    end
  end
end
