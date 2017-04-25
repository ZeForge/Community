class SkillsController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]
  before_action :set_skill, only: [:show, :edit, :update, :destroy]

  def index
    @skills = Skill.order('updated_at DESC').includes(:category, :users).all
  end

  def new
    @skill = Skill.new
  end

  def show
  end

  def create
    @skill = Skill.new(skill_params)
    @skill.user_ids = current_user.id

    respond_to do |format|
      if @skill.save
        format.html { redirect_to @skill, notice: 'Skill was successfully created.' }
        format.json { render :show, status: :created, location: @skill }
      else
        format.html { render :new }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  def my_skills
    @my_skills = current_user.skills.includes(:skillcategory)
  end

  private

    def set_skill
      @skill = Skill.find(params[:id])
    end

    def skill_params
      params.require(:skill).permit(:skillcategory_id, :user_id)
    end

  end
