Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'pizzas#index'
  
  scope '/auth' do
    post '/sign_up', to: 'users#create'
    post '/sign_in', to: 'users#sign_in'
    get '/show', to: 'users#show'
    post '/update', to: 'users#update'
    post '/destroy', to: 'users#destroy'
  end
end
