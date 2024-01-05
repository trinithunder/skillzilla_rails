class LifeStagesController < ApplicationController
  before_action :set_life_stage, only: %i[ show edit update destroy ]

  # GET /life_stages or /life_stages.json
  def index
    @life_stages = LifeStage.all
  end

  # GET /life_stages/1 or /life_stages/1.json
  def show
  end

  # GET /life_stages/new
  def new
    @life_stage = LifeStage.new
  end

  # GET /life_stages/1/edit
  def edit
  end

  # POST /life_stages or /life_stages.json
  def create
    @life_stage = LifeStage.new(life_stage_params)

    respond_to do |format|
      if @life_stage.save
        format.html { redirect_to life_stage_url(@life_stage), notice: "Life stage was successfully created." }
        format.json { render :show, status: :created, location: @life_stage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @life_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /life_stages/1 or /life_stages/1.json
  def update
    respond_to do |format|
      if @life_stage.update(life_stage_params)
        format.html { redirect_to life_stage_url(@life_stage), notice: "Life stage was successfully updated." }
        format.json { render :show, status: :ok, location: @life_stage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @life_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /life_stages/1 or /life_stages/1.json
  def destroy
    @life_stage.destroy!

    respond_to do |format|
      format.html { redirect_to life_stages_url, notice: "Life stage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_life_stage
      @life_stage = LifeStage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def life_stage_params
      params.require(:life_stage).permit(:title)
    end
end
