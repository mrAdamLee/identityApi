Rails.application.routes.draw do
  get 'stripe/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/stripe/create-verification-session', to: 'stripe#createVer'
  post '/webhook_events/:source', to: 'webhook_events#create'
end
