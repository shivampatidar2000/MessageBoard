Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
    devise_for :users do
      delete '/users/sign_out' => 'devise/sessions#destroy'
      end
      root "messages#index"
      
        resources :messages do 
          delete  '/messages/:id' => 'messages#destroy'
          resources :comments
      end
  end
