class ProfilesController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def show
    @profile = User.current_user
  end

  def edit
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.require(:post).permit(:title, :body, :description, :banner_image_url)
  end

end
