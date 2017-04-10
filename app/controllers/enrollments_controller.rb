class EnrollmentsController < ApplicationController
  before_action :authenticate_user!

  def create
    course = Course.find params[:course_id]

    Enrollment.create user_id: current_user.id, course_id: course.id
    redirect_to course_path(course)
  end
end
