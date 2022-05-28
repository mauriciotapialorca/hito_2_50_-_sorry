class UsuBuscaFarmBarriosController < ApplicationController
  before_action :set_usu_busca_farm_barrio, only: %i[ show edit update destroy ]

  # GET /usu_busca_farm_barrios or /usu_busca_farm_barrios.json
  def index
    @usu_busca_farm_barrios = UsuBuscaFarmBarrio.all
  end

  # GET /usu_busca_farm_barrios/1 or /usu_busca_farm_barrios/1.json
  def show
  end

  # GET /usu_busca_farm_barrios/new
  def new
    @usu_busca_farm_barrio = UsuBuscaFarmBarrio.new
  end

  # GET /usu_busca_farm_barrios/1/edit
  def edit
  end

  # POST /usu_busca_farm_barrios or /usu_busca_farm_barrios.json
  def create
    @usu_busca_farm_barrio = UsuBuscaFarmBarrio.new(usu_busca_farm_barrio_params)

    respond_to do |format|
      if @usu_busca_farm_barrio.save
        format.html { redirect_to usu_busca_farm_barrio_url(@usu_busca_farm_barrio), notice: "Usu busca farm barrio was successfully created." }
        format.json { render :show, status: :created, location: @usu_busca_farm_barrio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @usu_busca_farm_barrio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usu_busca_farm_barrios/1 or /usu_busca_farm_barrios/1.json
  def update
    respond_to do |format|
      if @usu_busca_farm_barrio.update(usu_busca_farm_barrio_params)
        format.html { redirect_to usu_busca_farm_barrio_url(@usu_busca_farm_barrio), notice: "Usu busca farm barrio was successfully updated." }
        format.json { render :show, status: :ok, location: @usu_busca_farm_barrio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @usu_busca_farm_barrio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usu_busca_farm_barrios/1 or /usu_busca_farm_barrios/1.json
  def destroy
    @usu_busca_farm_barrio.destroy

    respond_to do |format|
      format.html { redirect_to usu_busca_farm_barrios_url, notice: "Usu busca farm barrio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usu_busca_farm_barrio
      @usu_busca_farm_barrio = UsuBuscaFarmBarrio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def usu_busca_farm_barrio_params
      params.require(:usu_busca_farm_barrio).permit(:login, :password, :number_medicine)
    end
end
