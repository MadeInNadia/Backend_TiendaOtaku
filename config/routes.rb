Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :compras
      resources :contactos
      resources :perfils
      resources :usuarios
      resources :productos
    end
  end

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
