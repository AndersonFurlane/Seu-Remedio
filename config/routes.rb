Project::Application.routes.draw do
  mount Resque::Server.new, at: "/resque"
  root to: 'page#index'
  get "page/index"

  resources :contacts

  devise_for :users, :controllers => { :registrations => "users/registrations" }

  resources :reminders
  resources :users


end
