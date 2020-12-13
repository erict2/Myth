Rails.application.routes.draw do
    root 'welcome#index'
    resources :admin
    namespace :admin do
        resources :players
        resources :characters
    end
    namespace :player do
        resources :players
        resources :characters
    end
end
