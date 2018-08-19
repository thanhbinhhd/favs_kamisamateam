class PagesController < ApplicationController
  before_action :load_data, only: [:show]

  def show
    if valid_page?
      render template: "pages/#{params[:page]}"
    else
      render file: "public/404.html", status: :not_found
    end
  end

  private
  def valid_page?
    File.exist? Pathname
      .new(Rails.root + "app/views/pages/#{params[:page]}.html.erb")
  end

  def load_data
    @posts = Post.all.order(id: :desc)
    @products = Product.all
    @farmers = User.load_farmers
    @popular_posts = Post.all.limit Settings.limit_popular_posts
  end
end
