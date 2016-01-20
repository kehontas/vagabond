class SessionsController < ApplicationController
	def new
		@user = user.new
		render :new
	end
	
end
