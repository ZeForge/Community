class ProfilesController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]
  before_action :set_profile

  def show
  end

  def edit
  end

  def update
    if current_user.update(params[:name])
      flash[:success] = 'Your profile has been updated.'
      redirect_to profile_path, notice: 'Profile was successfully updated.'
    else
      @profile.errors.full_messages
      flash[:error] = @profile.errors.full_messages
      render :edit
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:name)
  end

  def set_profile
    @profile = User.last
  end
end
