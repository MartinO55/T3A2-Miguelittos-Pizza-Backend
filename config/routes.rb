Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  scope '/api' do

    scope '/admin' do

      scope '/products' do
        post '/new', to: 'products#new'
        get '/index', to: 'products#index'
        get '/:id', to: 'products#show'
        put '/:id', to: 'products#update'
        delete '/:id', to: 'products#destroy'
      end

      scope '/pizzas' do
        post '/new', to: 'pizzas#new'
        get '/index', to: 'pizzas#index'
        get '/:id', to: 'pizzas#show'
        put '/:id', to: 'pizzas#update'
        delete '/:id', to: 'pizzas#destroy'
      end

      scope '/orders' do
        # post '/new', to: 'orders#new'
        get '/index', to: 'orders#index'
        get '/:id', to: 'orders#show'
        put '/:id', to: 'orders#update'
        delete '/:id', to: 'orders#destroy'
      end

      post '/sign_in', to: 'users#sign_in'
    end

    scope '/products' do
      # post '/new', to: 'products#new'
      get '/index', to: 'products#index'
      get '/index/:id', to: 'products#customize'
      # get '/:id', to: 'products#show'
      # put '/:id', to: 'products#update'
      # delete '/:id', to: 'products#destroy'
    end

    scope '/pizzas' do
      # post '/new', to: 'pizzas#new'
      get '/index', to: 'pizzas#index'
      get '/:id', to: 'pizzas#show'
      # put '/:id', to: 'pizzas#update'
      # delete '/:id', to: 'pizzas#destroy'
    end

    scope '/orders' do
      post '/new', to: 'orders#new'
      # get '/index', to: 'orders#index'
      get '/:id', to: 'orders#show'
      # put '/:id', to: 'orders#update'
      # delete '/:id', to: 'orders#destroy'
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
