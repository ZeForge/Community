class DashboardsController < ApplicationController
  def show
    @users = User.all
    @posts = Post.all
  end
end
