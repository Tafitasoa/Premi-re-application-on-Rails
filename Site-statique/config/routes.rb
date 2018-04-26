Rails.application.routes.draw do
  get '/', to: 'static_pages#home', as: "home"

  get '/contact', to: 'static_pages#contact', as: "contact"

  get '/about', to: 'static_pages#about', as: "about"

  get '/riana', to: 'static_pages#about_riana', as: "aproposriana"

  get '/cedric', to: 'static_pages#about_cedric', as: "aproposcedric"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
