Project::Application.routes.draw do
  mount Resque::Server.new, at: "/resque"
  root to: 'page#index'
  get "page/index"

  resources :contacts, :except => [:show, :destroy, :update, :edit, :index]

  devise_for :users, :controllers => { :registrations => "users/registrations" }
  resources :sent_emails, :except => [:show, :destroy, :update, :new, :create]
  resources :reminders, :except => [:show]
  resources :users

end