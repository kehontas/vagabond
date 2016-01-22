class CitiesController < ApplicationController
	def index
		@cities = City.all
	end

	def new
		@cities = City.new
	end

	def create
		@cities = City.create(get_city_params)

		redirect_to '/show.html.erb'
	end

	def show
		@cities = City.find_by_id(params[:id])
		# @posts = @cities.posts
	end

	private

	def get_city_params
		params.require(:cities).permit(:name)
	end
end
