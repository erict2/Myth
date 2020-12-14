Rails.application.routes.draw do
    root 'welcome#index'
    get "/admin", to: "admin#index"
    namespace :admin do
        resources :players
        resources :characters
        resources :datatables
    end
    namespace :player do
        resources :players
        resources :characters
    end
end
