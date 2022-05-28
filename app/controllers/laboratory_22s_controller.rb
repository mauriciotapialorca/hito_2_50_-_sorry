class Laboratory22sController < ApplicationController
  before_action :set_laboratory_22, only: %i[ show edit update destroy ]

  # GET /laboratory_22s or /laboratory_22s.json
  def index
    @laboratory_22s = Laboratory22.all
  end

  # GET /laboratory_22s/1 or /laboratory_22s/1.json
  def show
  end

  # GET /laboratory_22s/new
  def new
    @laboratory_22 = Laboratory22.new
  end

  # GET /laboratory_22s/1/edit
  def edit
  end

  # POST /laboratory_22s or /laboratory_22s.json
  def create
    @laboratory_22 = Laboratory22.new(laboratory_22_params)

    respond_to do |format|
      if @laboratory_22.save
        format.html { redirect_to laboratory_22_url(@laboratory_22), notice: "Laboratory 22 was successfully created." }
        format.json { render :show, status: :created, location: @laboratory_22 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @laboratory_22.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /laboratory_22s/1 or /laboratory_22s/1.json
  def update
    respond_to do |format|
      if @laboratory_22.update(laboratory_22_params)
        format.html { redirect_to laboratory_22_url(@laboratory_22), notice: "Laboratory 22 was successfully updated." }
        format.json { render :show, status: :ok, location: @laboratory_22 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @laboratory_22.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /laboratory_22s/1 or /laboratory_22s/1.json
  def destroy
    @laboratory_22.destroy

    respond_to do |format|
      format.html { redirect_to laboratory_22s_url, notice: "Laboratory 22 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_laboratory_22
      @laboratory_22 = Laboratory22.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def laboratory_22_params
      params.require(:laboratory_22).permit(:number_laboratory, :description, :address, :pharmacy_of_brand, :distric, :region, :hour_open, :hour_close, :phone, :number_medicine_isbn)
    end
end
