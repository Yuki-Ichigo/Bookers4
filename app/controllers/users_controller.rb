class UsersController < ApplicationController

	def index
		@users = User.all
		@user = current_user
	end

	def create

	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		user = User.find(params[:id])
		user.update(user_params)
		redirect_to users_path(user.id)
	end

	def show
	end

	private
    def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
    end
end