Rails.application.routes.draw do
  root 'pages#top'
  devise_for :users
  get '/:user_id', to: 'users#show', as: 'events'
  get '/:user_id/events/create', to: 'events#create'
  post '/:user_id/events/update', to: 'events#update'
  
  delete '/:user_id/events/destroy', to: 'events#destroy'

end
