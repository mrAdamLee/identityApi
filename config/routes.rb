Rails.application.routes.draw do
  get 'stripe/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/stripe/create-verification-session', to: 'stripe#createVer', as: "createVer"
  post '/webhook_events/:source', to: 'webhook_events#create'
  get '/stripe/success', to: 'stripe#success', as: 'success'
  mount ActionCable.server -> '/response'
end
