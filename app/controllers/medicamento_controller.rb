class MedicamentoController < ApplicationController
  def index
     @medicamento= medicamento.new
     @medicamento.venta.build
  end

  def create
  end

  def show
  end

  def edit
  end
end
