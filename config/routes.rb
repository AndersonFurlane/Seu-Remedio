Project::Application.routes.draw do

  root to: 'page#index'
  get "page/index"

  match 'contact' => 'login/contact#index'


  devise_for :users, :controllers => { :registrations => "users/registrations" }

  resources :reminders
  resources :users


end
