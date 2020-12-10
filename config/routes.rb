Rails.application.routes.draw do
    root 'welcome#index'
    namespace :admin do
        resources :players
    end
end
