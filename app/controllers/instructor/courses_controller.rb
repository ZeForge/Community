class Instructor::CoursesController < ApplicationController
  def index
    @courses = Course.page(params[:page]).per(3)
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new course_params.merge(user_id: current_user.id)
    if @course.save
      redirect_to instructor_course_path(@course)
    else
      render "new", status: :unprocessable_entity
    end
  end

  def show
    @course = Course.find(params[:id])
  end

  private

  def course_params
    params.require(:course).permit(:title, :image, :description, :cost)
  end
  
end
