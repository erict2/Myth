Rails.application.routes.draw do
  root "pages#index"
  devise_for :users
  get "/admin", to: "admin#index"
  get 'get_characters_by_email/:email', to: 'characters#get_characters_by_email'
  namespace :admin do
    resources :users do
      resources :characters do
        resources :explogs
      end
    end
    resources :datatables
    resources :events do
      resources :eventattendances
    end
  end
end