class MediCinesController < ApplicationController
  before_action :set_medi_cine, only: %i[ show edit update destroy ]

  # GET /medi_cines or /medi_cines.json
  def index
    @medi_cines = MediCine.all
  end

  # GET /medi_cines/1 or /medi_cines/1.json
  def show
  end

  # GET /medi_cines/new
  def new
    @medi_cine = MediCine.new
  end

  # GET /medi_cines/1/edit
  def edit
  end

  # POST /medi_cines or /medi_cines.json
  def create
    @medi_cine = MediCine.new(medi_cine_params)

    respond_to do |format|
      if @medi_cine.save
        format.html { redirect_to medi_cine_url(@medi_cine), notice: "Medi cine was successfully created." }
        format.json { render :show, status: :created, location: @medi_cine }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @medi_cine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medi_cines/1 or /medi_cines/1.json
  def update
    respond_to do |format|
      if @medi_cine.update(medi_cine_params)
        format.html { redirect_to medi_cine_url(@medi_cine), notice: "Medi cine was successfully updated." }
        format.json { render :show, status: :ok, location: @medi_cine }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @medi_cine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medi_cines/1 or /medi_cines/1.json
  def destroy
    @medi_cine.destroy

    respond_to do |format|
      format.html { redirect_to medi_cines_url, notice: "Medi cine was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medi_cine
      @medi_cine = MediCine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medi_cine_params
      params.require(:medi_cine).permit(:number_medicine_isbn, :description, :initial_stock, :final_stock, :initial_price, :final_price)
    end
end
