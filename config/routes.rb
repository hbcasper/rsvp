Rails.application.routes.draw do
    root "invitados#index"
    
    resources :invitados
    resources :partys
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
