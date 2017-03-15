class UsersController < ApplicationController
  before_action :set_user

  def index
    @users = User.all.order('created_at DESC')
  end

  def show
    @user = User.find(params[:id])
  end

  def posts
    @posts = current_user.posts.all
  end

  def update
    respond_to do |format|
      if @user.update_attributes(user_params)
        format.html { redirect_to profile_path, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def json
    @users =  User.all.order('created_at DESC')
    render json: JSON.pretty_generate(@users.as_json)
  end

  private

  def user_params
    params.require(:user).permit(:name, :position)
  end

  def set_user
    @user = current_user
  end

end
