class CoursesController < ApplicationController
  def index
    @courses = Course.page(params[:page]).per(3)
  end

  def show
    @course = Course.find(params[:id])
  end
end
