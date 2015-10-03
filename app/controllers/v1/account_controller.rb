class V1::AccountController < ApplicationController
  #before_filter :authenticate_user!
  #before_action :set_user
  
  def settings
    render json: @user
  end
  
  def orders
   # customer = Stripe::Customer.retrieve(@user.customer_id)
    
    #Stripe.api_key = "sk_test_pegS2RygorPyYYjd2v9fS7WB"

    #orders = Stripe::Order.all(:limit => 3)
    render json: @user
  end
  
  def profile
    
  end
  
  private
  
  def set_user
    @user = current_user
  end
  
end
