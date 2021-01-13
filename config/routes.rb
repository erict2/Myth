Rails.application.routes.draw do
  root "pages#index"
  devise_for :users

  namespace :character do 
    get :getcharacter
    get :events
  end
  
  resources :character
  namespace :player do
    get :explog
    get :events
    post :changecharacter
    get :changeeventcharacter
    post :changeeventcharacter

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