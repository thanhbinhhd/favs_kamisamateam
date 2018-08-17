class ActivitiesController < ApplicationController
  before_action :authenticate_user!, :find_post, :find_activity

  def create
    @activity = @post.activities.build user: current_user unless @activity
    @activity.activity_type = if @activity.like? &&
      params[:activity_type] == :dislike
       :dislike
    elsif @activity.dislike? && params[:activity_type] == :like
      :like
    else
      params[:activity_type]
    end
    @activity.save
  end

  def destroy
    @activity.destroy if @activity
  end

  private
  def authenticate_user!
    unless current_user
      flash[:danger] = t "need_sign"
      redirect_to new_user_session_path
    end
  end

  def find_post
    @post = Post.find_by id: params[:post_id]
    unless @post
      flash[:danger] = t "not_found.post"
      redirect_to not_found_index_path
    end
  end

  def find_activity
    @activity = @post.activities.find_by user: current_user
  end
end
