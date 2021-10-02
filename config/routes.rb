Rails.application.routes.draw do
    root "invitados#index"
    get "/invitados", to: "invitados#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
