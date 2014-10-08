class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def create
		@user = User.new user_params
		if @user.save 
			redirect_to root_path
		else
			render :new
		end
	end

	def show
	end

	def new
		@user = User.new
	end

	def edit
    @user = @current_user
  end


private
def user_params
	params.require(:user).permit(:name, :email, :password, :password_confirmation, :avatar)
end

end