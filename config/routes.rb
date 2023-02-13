Rails.application.routes.draw do
  default_url_options :host => "localhost:3000"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
    devise_for :users do
      delete '/users/sign_out' => 'devise/sessions#destroy'
      end
      root "messages#index"
      
        resources :messages do 
          delete  '/messages/:id' => 'messages#destroy'
          resources :comments do 
          end
        end
      resources :posts do
        resources :likes
        resources :messages
      end
  end
