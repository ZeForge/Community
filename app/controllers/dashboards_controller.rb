class DashboardsController < ApplicationController
  def show
      @myskills =  current_user.myskills.all.order(created_at: :desc).includes(skill: :category)
  end
end
