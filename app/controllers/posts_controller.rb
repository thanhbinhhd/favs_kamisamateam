class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :new]
  before_action :load_post, only: [:show]
  def index
    @posts = Post.paginate(page: params[:page],
      per_page: Settings.page_post_size).order(id: :desc)
  end


  def new
    @products = Product.all
  end

  def create
  	@post = Post.new post_params
  	@post.user_id = current_user.id
  	if @post.save
  	  flash[:success] = t "post_action.upload_success"
      redirect_to root_path
    else
      respond_to do |format|
        format.html do
          flash[:danger] = t "post_action.upload_fail"
          redirect_to root_path
        end
        format.js
      end
	end
  end

  def show
  end

  private
  def post_params
  	params.require(:post).permit :title, :content, :image, :product_id
  end

  def load_post
  	@post = Post.find_by id: params[:id]
  	unless @post
  		flash[:danger] = t "not_found.post"
  		redirect_to root_path
  	end

  end

end
