Rails.application.routes.draw do
  devise_for :users
  resources :subtasks

  resources :tasks

  resources :lists

  root to: redirect('lists/index')
end
