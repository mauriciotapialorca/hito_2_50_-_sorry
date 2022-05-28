class ProveedorController < ApplicationController
  def index
     @proveedor= proveedor.new
     @proveedor.venta.build
  end

  def create
  end

  def show
  end

  def edit
  end
end
