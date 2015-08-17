class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  
  protect_from_forgery with: :null_session
  
  def index
    render 'layouts/application'
  end
  
end
