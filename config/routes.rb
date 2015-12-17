Rails.application.routes.draw do
  root 'todos#index'
  resources :todos, only: [:new, :create, :index] do
    resource :completion, only: :create
  end
  resource :session, only: [:new, :create]
end
