class UsersController < ApplicationController

	def index
		@users = User.all
		@user = current_user
	end

	def edit
	end

	def show
	end
end