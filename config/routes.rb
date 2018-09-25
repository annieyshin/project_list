Rails.application.routes.draw do
  resources :skills
  root to: 'pages#home'
  devise_for :users
  resources :projects
end
