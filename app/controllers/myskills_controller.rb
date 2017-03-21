class MyskillsController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]
  before_action :set_myskill, only: [:show, :edit, :update, :destroy]
  before_action :check_current_user_is_owner, only: [:edit, :update, :destroy]

  # GET /myskills
  # GET /myskills.json
  def index
    @myskills = Myskill.all
  end

  def my_skills
      @myskills =  current_user.myskills.all.order(created_at: :desc).preload(:skill)
  end

  # GET /myskills/1
  # GET /myskills/1.json
  def show
  end

  # GET /myskills/new
  def new
    @myskill = Myskill.new
  end

  # GET /myskills/1/edit
  def edit
  end

  # POST /myskills
  # POST /myskills.json
  def create
    @myskill = Myskill.new(myskill_params)
    @myskill.user_id = current_user.id

    respond_to do |format|
      if @myskill.save
        format.html { redirect_to my_skills_path, notice: 'Myskill was successfully created.' }
        format.json { render :show, status: :created, location: @myskill }
      else
        format.html { render :new }
        format.json { render json: @myskill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myskills/1
  # PATCH/PUT /myskills/1.json
  def update
    respond_to do |format|
      if @myskill.update(myskill_params)
        format.html { redirect_to @myskill, notice: 'Myskill was successfully updated.' }
        format.json { render :show, status: :ok, location: @myskill }
      else
        format.html { render :edit }
        format.json { render json: @myskill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myskills/1
  # DELETE /myskills/1.json
  def destroy
    @myskill.destroy
    respond_to do |format|
      format.html { redirect_to myskills_url, notice: 'Myskill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def check_current_user_is_owner
    @myskill = Myskill.find(params[:id])
    unless current_user.id == @myskill.user_id?
      redirect_to myskills_url, notice: 'Please Behave'
    end
  end
  
    # Use callbacks to share common setup or constraints between actions.
    def set_myskill
      @myskill = Myskill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myskill_params
      params.require(:myskill).permit(:skill_id, :score)
    end
end
