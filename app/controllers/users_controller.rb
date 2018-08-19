class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update]
  before_action :find_user, only: [:show, :edit, :update]

  def index
    @farmers = User.load_farmers.paginate(page: params[:page],
      per_page: Settings.page_farmer_size).order(id: :asc)
  end

  def show
    @posts = @user.posts.includes(:comments).paginate(page: params[:page],
      per_page: Settings.page_post_size).order(id: :desc)
  end

  def edit
    if @user != current_user
      flash[:danger] =  t "perrmission_denied"
      redirect_to root_path
    end
  end

  def update
    if @user.update_attributes user_params
      flash[:success] = t "info_update_success"
      redirect_to @user
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit :avatar, :name, :birthday, :sex
  end

  def find_user
    @user = User.find_by id: params[:id]
    unless @user
      flash[:danger] = t "not_found.user"
      redirect_to root_path
    end
  end
end
