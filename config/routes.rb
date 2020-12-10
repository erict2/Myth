Rails.application.routes.draw do
  root 'welcome#index'
  #resources :player
  resources :playeradmin
end
