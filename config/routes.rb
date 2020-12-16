Rails.application.routes.draw do
  root "pages#index"
  devise_for :users
  get "/admin", to: "admin#index"
  namespace :admin do
    resources :users
    resources :characters
    resources :datatables
  end
end
