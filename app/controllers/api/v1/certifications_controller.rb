class Api::V1::CertificationsController < ApplicationController
	respond_to :json

	def index
		@coach = Coach.find(params[:coach_id])
		@certifications = @coach.certifications.all

		@filtered_certification = @certifications.where(coach_id: params[:coach_id])
		render :json => { :data => @filtered_certification }
	end

	def show
		@coach = Coach.find(params[:coach_id])
		@certifications = @coach.certifications.find(params[:id])
	end
end
