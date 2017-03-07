class UserController < ApplicationController

  def index
    @users = User.all
  end

  def json
    @users = User.all.to_json
  end

  def show
    @user = User.find(params[:id])
  end

end
