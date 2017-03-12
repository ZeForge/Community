class UsersController < ApplicationController

  def index
    @users = User.all.order('created_at DESC')
  end

  def show
    @user = User.find(params[:id])
  end

  def json
    @users =  User.all.order('created_at DESC')
    render json: JSON.pretty_generate(@users.as_json)
  end

end
