class Api::V1::CentersController < ApplicationController
	respond_to :json
	
	def index
		# @wod = Wod.find(params[:wod_id])
		@category = Category.find(params[:category_id])
		@centers = @category.centers.all
		
		@filtered_centers = @centers.where(category_id: params[:category_id])
		render :json => { :data => @filtered_centers }
	end

	def show
		@wod = Wod.find(params[:wod_id])
		@center = @wod.centers.find(params[:center_id])
		
		# @users = User.all
		# @subusers = []
		# @users.each do |user|
		#    if user.id == @center.user_id
		#    	  @subusers << user
		#    end
		# end
		# render :json => { :data => @subusers }
	end

	def update
		# @wod = Wod.find(params[:wod_id])
		@category = Category.find(params[:category_id])
		@center = @category.centers.find(params[:center_id])
		if @center.update(user_id: params[:user_id])
			render :json => {:data => @center}
		else
			render 'new'
		end
	end

	# def create
		
	# 	@wod = Wod.find(params[:wod_id])
	# 	if @center = @wod.centers.create(user_id: params[:user_id])
	# 		render :json => {:data => @center}
	# 	else
	# 		render 'new'
	# 	end
	# end

		
	def edit
		@wod = Wod.find(params[:wod_id])
		@center = @wod.centers.find(params[:id])
	end

	def user_center
		@user = User.find(params[:user_id])
		@user_centers = @user.centers.all
		@filtered_user_centers = @user_centers.where(user_id: params[:user_id])

		render :json => {:data => @filtered_user_centers}
	end

	def all_center
		@all_centers = Center.all
		@filtered_all_centers = @all_centers.where(id: params[:center_id])
		render :json => {:data => @filtered_all_centers}
	end
end
