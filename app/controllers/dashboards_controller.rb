class DashboardsController < ApplicationController
  def show
    @users = User.all.order('created_at DESC')
    @posts = Post.all.order('created_at DESC')
  end
end
