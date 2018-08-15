class PostsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @posts = Post.paginate(page: params[:page],
      per_page: Settings.page_post_size).order(id: :desc)
  end
end
