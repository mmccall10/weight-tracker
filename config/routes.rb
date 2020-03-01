Rails.application.routes.draw do
  resource :profile
  resources :entries
  root "home#index"
end
