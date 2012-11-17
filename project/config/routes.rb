Project::Application.routes.draw do

  root to: 'page#index'
  get "page/index"
  #get "contato/index"
  match 'contato' => 'login/contato#index'
  match 'register_edit' => 'login/registrations#edit'

  devise_for :users


  resources :users


end
