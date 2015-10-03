class V1::ChargesController < ApplicationController
  before_filter :authenticate_user!
  
  def create
    user = current_user
    
    if user.customer_id.blank?
      customer = Stripe::Customer.create(
        source:      params[:token],
        description: "User #{user.id}",
        email:       user.email
      )
      user.update_attributes(
        customer_id: customer.id,
        last4:       params[:last4]
      )
    else
      user.update_attributes(last4: params[:last4])
    end
    
    charge = Stripe::Charge.create(
      customer:    user.customer_id,
      amount:      params[:total],
      description: "IP: #{request.ip}",
      currency:    "usd"
    )
    render json: charge.to_json
  end
  
end