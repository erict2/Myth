Rails.application.routes.draw do
  root "pages#index"
  devise_for :users

  namespace :player do
    resources :eventattendances
    resources :characters do
      post :levelup
      resources :characterskills
      resources :characterprofessions
    end
  end

  namespace :admin do
    resource :settings
    resources :users do
      resources :explogs
      resources :characters do
        resources :characterskills
        resources :characterprofessions
      end
    end
    resources :datatables
    resources :events do
      resources :eventattendances
    end
  end
end