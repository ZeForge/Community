class UserController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def json
    @users =  User.all
    render json: JSON.pretty_generate(@users.as_json)
  end

end
