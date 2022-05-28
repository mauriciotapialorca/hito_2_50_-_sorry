Rails.application.routes.draw do
  resources :usu_busca_farm_barrios
  resources :medi_cines
  resources :laboratory_22s
  resources :laboratories
  resources :regions
  resources :providers
  get 'venta/index'
  get 'venta/create'
  get 'venta/show'
  get 'venta/edit'
  get 'proveedor/index'
  get 'proveedor/create'
  get 'proveedor/show'
  get 'proveedor/edit'
  get 'medicamento/index'
  get 'medicamento/create'
  get 'medicamento/show'
  get 'medicamento/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
