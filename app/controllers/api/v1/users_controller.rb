class Api::V1::UsersController < ApplicationController
	def index
		@users = User.all
		@filtered_users = @users.where(id: params[:user_id])
		render :json => {:data => @filtered_users}
	end

	def create
		Stripe.api_key = Rails.application.secrets.stripe_secret_key
 
		token = params[:stripeToken]
		 
		if charge = Stripe::Charge.create(
			  :amount => 1000, # amount in cents, again
			  :currency => "usd",
			  :card => token,
			  :description => "something about your customer"
			)
			render :json => {:data => charge}
		end
		
	end
end
