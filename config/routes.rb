Rails.application.routes.draw do

  # # Read all tasks
  get 'tasks', to: 'tasks#index'

  get 'tasks/new', to: 'tasks#new', as: :new_task

  # # Read one task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # # Create (2 requests)

  post'tasks', to: 'tasks#create'

  # #Update (2 requests)

  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  patch 'tasks/:id', to: 'tasks#update', as: :completed

  # # Detroy
  delete 'tasks/:id', to: 'tasks#destroy'

end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

