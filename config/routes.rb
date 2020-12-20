Rails.application.routes.draw do
  root "pages#index"
  devise_for :users
  get "/admin", to: "admin#index"
  namespace :admin do
    resources :users do
      resources :characters do
        resources :explogs
      end
    end
    resources :datatables
  end
end