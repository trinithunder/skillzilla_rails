class AppLayersController < ApplicationController
  before_action :set_app_layer, only: %i[ show edit update destroy ]

  # GET /app_layers or /app_layers.json
  def index
    @app_layers = AppLayer.all
  end

  # GET /app_layers/1 or /app_layers/1.json
  def show
  end

  # GET /app_layers/new
  def new
    @app_layer = AppLayer.new
  end

  # GET /app_layers/1/edit
  def edit
  end

  # POST /app_layers or /app_layers.json
  def create
    @app_layer = AppLayer.new(app_layer_params)

    respond_to do |format|
      if @app_layer.save
        format.html { redirect_to app_layer_url(@app_layer), notice: "App layer was successfully created." }
        format.json { render :show, status: :created, location: @app_layer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @app_layer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_layers/1 or /app_layers/1.json
  def update
    respond_to do |format|
      if @app_layer.update(app_layer_params)
        format.html { redirect_to app_layer_url(@app_layer), notice: "App layer was successfully updated." }
        format.json { render :show, status: :ok, location: @app_layer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @app_layer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_layers/1 or /app_layers/1.json
  def destroy
    @app_layer.destroy!

    respond_to do |format|
      format.html { redirect_to app_layers_url, notice: "App layer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_layer
      @app_layer = AppLayer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def app_layer_params
      params.fetch(:app_layer, {})
    end
end
