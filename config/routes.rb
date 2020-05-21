Rails.application.routes.draw do
  root 'pages#top'
  devise_for :users
  resources :users, :only => [:show]

end
