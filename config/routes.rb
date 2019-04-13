Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home' 

  resources :charges
  resources :purchases, only: [:show] #this route sends requests to the purchases controller; route limited to the method 'show'
                          #the method 'show' needs a view called 'show.html.erb'
end


#by default, rails directs the controller to render a view with the same name being used 