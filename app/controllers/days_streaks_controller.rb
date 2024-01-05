class DaysStreaksController < ApplicationController
  before_action :set_days_streak, only: %i[ show edit update destroy ]

  # GET /days_streaks or /days_streaks.json
  def index
    @days_streaks = DaysStreak.all
  end

  # GET /days_streaks/1 or /days_streaks/1.json
  def show
  end

  # GET /days_streaks/new
  def new
    @days_streak = DaysStreak.new
  end

  # GET /days_streaks/1/edit
  def edit
  end

  # POST /days_streaks or /days_streaks.json
  def create
    @days_streak = DaysStreak.new(days_streak_params)

    respond_to do |format|
      if @days_streak.save
        format.html { redirect_to days_streak_url(@days_streak), notice: "Days streak was successfully created." }
        format.json { render :show, status: :created, location: @days_streak }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @days_streak.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /days_streaks/1 or /days_streaks/1.json
  def update
    respond_to do |format|
      if @days_streak.update(days_streak_params)
        format.html { redirect_to days_streak_url(@days_streak), notice: "Days streak was successfully updated." }
        format.json { render :show, status: :ok, location: @days_streak }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @days_streak.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /days_streaks/1 or /days_streaks/1.json
  def destroy
    @days_streak.destroy!

    respond_to do |format|
      format.html { redirect_to days_streaks_url, notice: "Days streak was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_days_streak
      @days_streak = DaysStreak.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def days_streak_params
      params.require(:days_streak).permit(:count)
    end
end
