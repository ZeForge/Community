class ProfilesController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]
  #before_action :set_profile

  def show
  end

  def edit
    @profile = User.last.id
  end

  def edit3
    @profile = User.last.id
    if @profile.update(profile_params)
      flash[:success] = 'Your profile has been updated.'
      redirect_to profile_path(profile_path)
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
    @profile = current_user
  end
end
