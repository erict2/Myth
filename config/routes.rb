Rails.application.routes.draw do
    root 'welcome#index'
    get "/admin", to: "admin#index"
    #resources :admin
    namespace :admin do
        resources :players
        resources :characters
    end
    namespace :player do
        resources :players
        resources :characters
    end
end
