Rails.application.routes.draw do
  get 'pages/info'
  
  devise_for :users

  resources :subtasks

  resources :tasks

  resources :lists

  root to: redirect('/pages/info')
end
