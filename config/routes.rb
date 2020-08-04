Rails.application.routes.draw do
  resources :subtasks

  resources :tasks

  resources :lists

  root to: redirect('lists/index')
end
