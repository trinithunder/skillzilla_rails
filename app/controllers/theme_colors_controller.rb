class ThemeColorsController < ApplicationController
  before_action :set_theme_color, only: %i[ show edit update destroy ]

  # GET /theme_colors or /theme_colors.json
  def index
    @theme_colors = ThemeColor.all
  end

  # GET /theme_colors/1 or /theme_colors/1.json
  def show
  end

  # GET /theme_colors/new
  def new
    @theme_color = ThemeColor.new
  end

  # GET /theme_colors/1/edit
  def edit
  end

  # POST /theme_colors or /theme_colors.json
  def create
    @theme_color = ThemeColor.new(theme_color_params)

    respond_to do |format|
      if @theme_color.save
        format.html { redirect_to theme_color_url(@theme_color), notice: "Theme color was successfully created." }
        format.json { render :show, status: :created, location: @theme_color }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @theme_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /theme_colors/1 or /theme_colors/1.json
  def update
    respond_to do |format|
      if @theme_color.update(theme_color_params)
        format.html { redirect_to theme_color_url(@theme_color), notice: "Theme color was successfully updated." }
        format.json { render :show, status: :ok, location: @theme_color }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @theme_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theme_colors/1 or /theme_colors/1.json
  def destroy
    @theme_color.destroy!

    respond_to do |format|
      format.html { redirect_to theme_colors_url, notice: "Theme color was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_theme_color
      @theme_color = ThemeColor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def theme_color_params
      params.require(:theme_color).permit(:title, :hexCode)
    end
end
