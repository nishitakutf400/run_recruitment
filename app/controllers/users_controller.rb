class UsersController < ApplicationController
before_action :authenticate_user!,only: [:index,:show, :edit]
	def index
		@user = current_user
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.update(user_params)
		redirect_to user_path(@user)

	end



private
def user_params
	params.require(:user).permit(:nickname, :gender, :age, :introduce)
end

end