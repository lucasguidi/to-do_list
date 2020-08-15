Rails.application.routes.draw do
  get 'pages/info'
  get 'pages/index'
  get 'pages/contact'
  
  devise_for :users
  
  resources :subtasks

  resources :tasks

  resources :lists

  root to: redirect('/pages/index')
end
