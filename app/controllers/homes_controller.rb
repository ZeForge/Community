class HomesController < ApplicationController
  def show
    @users = User.all.order('created_at DESC')
    @posts = Post.page(params[:page]).per(5)
  end
end
