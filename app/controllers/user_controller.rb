class UserController < ApplicationController

  def index
    @users = User.all
  end

  def json
    data = User.all.to_json
    send_data data, :type => 'application/json; header=present', :disposition => "attachment; filename=users.json"
  end

  def show
    @user = User.find(params[:id])
  end

end
