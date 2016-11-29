class Api::V1::WodsController < ApplicationController
	def index
		# @category = Category.find(params[:category_id])
		@center = Center.find(params[:center_id])
		@wods = @center.wods.all
		@filtered_wods = @wods.where(name: params[:wod_name])
		render :json => { :data => @filtered_wods }
	end

	def create
		# @category = Category.find(params[:category_id])
		@center = Center.find(params[:center_id])
		params[:time] =  Time.parse(params[:time]).strftime("%I:%M%p");
		
		if @wod = @center.wods.create(name: params[:wod_name], location: params[:location], capacity: params[:capacity], 
			avatar_wod_img_file_name: params[:img_name], avatar_wod_img_content_type: params[:img_type],
			avatar_wod_img_file_size: params[:img_size], description: params[:description],
			wod_datetime: params[:date], wod_time: params[:time])
			render :json => {:data => @wod}
		else
			render 'new'
		end
	end

	def new
		@category = Category.find(params[:category_id])
		@wod = Wod.new
	end

	def show
		@wod = Wod.find(params[:id])
	end

	def all_wod
		@all_wods = Wod.all
		@filtered_all_wods = @all_wods.where(id: params[:wod_id])
		render :json => {:data => @filtered_all_wods}
	end

end
