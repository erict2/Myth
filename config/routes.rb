Rails.application.routes.draw do
  root "pages#index"
  devise_for :users
  namespace :admin do
    resources :users do
      resources :characters do
        resources :explogs
        resources :characterskills
      end
    end
    resources :datatables
    resources :events do
      resources :eventattendances
    end
  end
end