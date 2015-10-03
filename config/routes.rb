Rails.application.routes.draw do

  scope :api do
    mount_devise_token_auth_for 'User', at: 'auth'
    
    namespace :v1 do
      resources :posts,    except: [:new, :edit]
      resources :products, except: [:new, :edit]
      post 'charge',       to:  'charges#create'
      
      resources :account do
        collection do
          get :settings
          get :orders
          get :profile
        end
      end
      
    end
  end
  root 'application#index'
end


