class DashboardsController < ApplicationController
  def show
      @myskills =  current_user.myskills.all.order(created_at: :desc).includes(skill: :category)
      @posts = current_user.posts.page(params[:page]).per(5)
  end
end
