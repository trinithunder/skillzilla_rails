class TermsOfServicesController < ApplicationController
  before_action :set_terms_of_service, only: %i[ show edit update destroy ]

  # GET /terms_of_services or /terms_of_services.json
  def index
    @terms_of_services = TermsOfService.all
  end

  # GET /terms_of_services/1 or /terms_of_services/1.json
  def show
  end

  # GET /terms_of_services/new
  def new
    @terms_of_service = TermsOfService.new
  end

  # GET /terms_of_services/1/edit
  def edit
  end

  # POST /terms_of_services or /terms_of_services.json
  def create
    @terms_of_service = TermsOfService.new(terms_of_service_params)

    respond_to do |format|
      if @terms_of_service.save
        format.html { redirect_to terms_of_service_url(@terms_of_service), notice: "Terms of service was successfully created." }
        format.json { render :show, status: :created, location: @terms_of_service }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @terms_of_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /terms_of_services/1 or /terms_of_services/1.json
  def update
    respond_to do |format|
      if @terms_of_service.update(terms_of_service_params)
        format.html { redirect_to terms_of_service_url(@terms_of_service), notice: "Terms of service was successfully updated." }
        format.json { render :show, status: :ok, location: @terms_of_service }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @terms_of_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /terms_of_services/1 or /terms_of_services/1.json
  def destroy
    @terms_of_service.destroy!

    respond_to do |format|
      format.html { redirect_to terms_of_services_url, notice: "Terms of service was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_terms_of_service
      @terms_of_service = TermsOfService.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def terms_of_service_params
      params.require(:terms_of_service).permit(:title, :message)
    end
end
