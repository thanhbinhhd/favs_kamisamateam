class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :load_post, only: [:show]
  def index
    @posts = Post.paginate(page: params[:page],
      per_page: Settings.page_post_size).order(id: :desc)
  end


  def new
  end

  def create
  	@post = Post.new post_params
  	@post.user_id = current_user.id

  	if @post.save
  	  flash[:success] = "Create post successfully!"
      redirect_to root_path
    else
      respond_to do |format|
        format.html do
          flash[:danger] = "Create post false!"
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
  	params.require(:post).permit :title, :content, :image
  end

  def load_post
  	@post = Post.find_by id: params[:id]
  	unless @post
  		flash[:danger] = "Post not found!"
  		redirect_to root_path
  	end
  	
  end

end
