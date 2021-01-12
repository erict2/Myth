Rails.application.routes.draw do
  root "pages#index"
  devise_for :users

  namespace :character do
    get :changecharacter
    post :changecharacter
    get :getcharacter
  end
  
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
      get :reset
      get :confirm
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

  resources :characterclass do
    get :getcharacterclass
  end
  resources :deity do
    get :getdeity
  end
  resources :race do
    get :getrace
  end
end