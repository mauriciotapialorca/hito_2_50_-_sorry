class VentaController < ApplicationController
  def index
     @venta= venta.new
     @venta.venta.build
  end

  def create
  end

  def show
  end

  def edit
  end
end
