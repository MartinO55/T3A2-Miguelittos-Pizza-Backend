Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'pizzas#index'
  scope '/api' do
    scope '/product' do
      post '/new', to: 'products#new'
      get '/index', to: 'products#index'
      get '/:id', to: 'products#show'
    end

    scope '/auth' do
      post '/sign_up', to: 'users#create'
      post '/sign_in', to: 'users#sign_in'
      get '/show', to: 'users#show'
      put '/update', to: 'users#update'
      delete '/destroy', to: 'users#destroy'
    end
  end
end
