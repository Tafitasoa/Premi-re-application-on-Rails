Rails.application.routes.draw do
  get '/creation(/:erreur)', to: 'users_controller#new', as: 'creation'
  
  post '/', to: 'users_controller#create' 

  get '/', to: 'static_pages#home' 

  get '/user/id_de_l\'utilisateur', to: 'users_controller#show'

  get '/user/:username', to: 'users_controller#every_user'

  get '/liste', to: 'users_controller#list', as: 'list'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
