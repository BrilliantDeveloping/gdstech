Rails.application.routes.draw do
  scope :api do
    mount_devise_token_auth_for 'User', at: 'auth'
    namespace :v1 do
      
      resources :posts, except: [:new, :edit]
      
    end
  end
  root 'application#index'
end
