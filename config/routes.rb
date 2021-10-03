Rails.application.routes.draw do
    root "invitados#index"
    
    
    resources :partys do
    resources :invitados
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
    end
