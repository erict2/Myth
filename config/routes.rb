Rails.application.routes.draw do
  root "pages#index"
  devise_for :users

  namespace :character do 
    get :getcharacter
    get :events
    post :levelup
    get :availableskills
    get :trainskill
    post :trainskill
    post :removeskill
    get :learnprofession
    post :learnprofession
    post :removeprofession
    get :comingsoon
  end
  
  resources :character

  namespace :player do
    get :explog
    get :events
    post :changecharacter
    get :changeeventcharacter
    post :changeeventcharacter
  end

  namespace :admin do
    resource :settings
    resources :character do
      get :loginas
    end
    resources :datatables
    resources :users do
      get :reset
      get :confirm
      resources :explogs
    end
    
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
  resources :skill do
    get :getskill
  end
  resources :profession do
    get :getprofession
  end
end