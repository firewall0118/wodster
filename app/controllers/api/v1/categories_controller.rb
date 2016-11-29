class Api::V1::CategoriesController < ApplicationController
	def index
		@categories = Category.all
		render :json => {:data => @categories}
	end

	def show
		@category = Categories.find(params[:id])
	end

	def all_category
		@all_categories = Category.all
		@filtered_all_categories = @all_categories.where(id: params[:category_id])
		render :json => {:data => @filtered_all_categories}
	end
end