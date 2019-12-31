Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :albums, except: [:edit, :new]
  resources :photos, except: [:edit, :new]
end
