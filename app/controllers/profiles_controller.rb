class ProfilesController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]

  def show
    @profile = User.find(current_user.id)
  end

  def edit
    @profile = User.find(current_user.id)
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.require(:post).permit(:name)
  end

end
