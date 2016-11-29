class Api::V1::CoachesController < ApplicationController
	respond_to :json

	def index
		@center = Center.find(params[:center_id])
		@coaches = @center.coaches.all
		@filtered_coaches = @coaches.where(center_id: params[:center_id])
		render :json => { :data => @filtered_coaches }
	end

	def update
		@coach = Coach.find(params[:coach_id])
		if @coach.update(user_id: params[:user_id])
			render :json => {:data => @coach}
		else
			render 'edit'
		end
	end

	def edit
		@center = Center.find(params[:center_id])
		@coach = @center.coaches.find(params[:coach_id])
	end

	def user_coach
		@coaches = Coach.all
		@filtered_coaches = @coaches.where(id: params[:coach_id])
		render :json => {:data => @filtered_coaches}
	end
end
