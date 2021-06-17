class IotDataController < ApplicationController
  before_action :set_iot_datum, only: %i[ show edit update destroy ]

  # GET /iot_data or /iot_data.json
  def index
    @iot_data = IotDatum.all
  end

  # GET /iot_data/1 or /iot_data/1.json
  def show
  end

  # GET /iot_data/new
  def new
    @iot_datum = IotDatum.new
  end

  # GET /iot_data/1/edit
  def edit
  end

  # POST /iot_data or /iot_data.json
  def create
    @iot_datum = IotDatum.new(iot_datum_params)

    respond_to do |format|
      if @iot_datum.save
        format.html { redirect_to @iot_datum, notice: "Iot datum was successfully created." }
        format.json { render :show, status: :created, location: @iot_datum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @iot_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /iot_data/1 or /iot_data/1.json
  def update
    respond_to do |format|
      if @iot_datum.update(iot_datum_params)
        format.html { redirect_to @iot_datum, notice: "Iot datum was successfully updated." }
        format.json { render :show, status: :ok, location: @iot_datum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @iot_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iot_data/1 or /iot_data/1.json
  def destroy
    @iot_datum.destroy
    respond_to do |format|
      format.html { redirect_to iot_data_url, notice: "Iot datum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iot_datum
      @iot_datum = IotDatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def iot_datum_params
      params.require(:iot_datum).permit(:temp, :hum)
    end
end
