class MyskillsController < ApplicationController
  before_action :set_myskill, only: [:show, :edit, :update, :destroy]

  # GET /myskills
  # GET /myskills.json
  def index
    @myskills = Myskill.all
  end

  def current_user
    @myskills = Myskill.all
    #@myskills = current_user.myskills.includes(:skillcategory)
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

    respond_to do |format|
      if @myskill.save
        format.html { redirect_to @myskill, notice: 'Myskill was successfully created.' }
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
    # Use callbacks to share common setup or constraints between actions.
    def set_myskill
      @myskill = Myskill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myskill_params
      params.require(:myskill).permit(:user_id, :skill_id)
    end
end
