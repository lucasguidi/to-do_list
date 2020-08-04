Rails.application.routes.draw do
  get 'task/new'
  get 'task/create'
  get 'task/index'
  get 'task/destroy'
  get 'task/edit'
  get 'task/update'
  get 'task/show'
  get 'list/index'
  get 'list/new'
  get 'list/create'
  get 'list/destroy'
  get 'list/edit'
  get 'list/update'
  get 'list/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
