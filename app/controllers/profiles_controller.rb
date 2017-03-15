class ProfilesController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]
  before_action :set_profile

  def show
  end

  def edit
  end

  def updates
    respond_to do |format|
      if @profile.update_attributes(profile_params)
        save!
        p  current_user.errors.inspect
        format.html { redirect_to profile_path, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
        @profile.save
      else
        format.html { render :edit }
        p  current_user.errors.inspect
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def profile_params
    params(:profile).permit(:name)
  end

  def set_profile
    @profile = current_user
  end
end
