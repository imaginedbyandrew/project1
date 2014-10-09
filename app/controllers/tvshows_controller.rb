class TvshowsController < ApplicationController

	def index
		@tvshows = Tvshow.all
	end

	def new
		redirect_to login_path unless @current_user
		@tvshow = Tvshow.new
	end

	def create
		binding.pry
		@tvshow = Tvshow.create tvshow_params
		@current_user.tvshows << @tvshow
		redirect_to tvshows_path
	end

	def like
		@tvshow = Tvshow.find params[:id]
		@current_user.tvshows << @tvshow
		redirect_to user_path(@current_user)
	end

	def show
		@tvshow = Tvshow.find params[:id]
	end

	def edit
		@tvshow = Tvshow.find params[:id]
	end

	def update
		@tvshow = Tvshow.find params[:id]
		@tvshow.update tvshow_params
		redirect_to @tvshow
	end

	def destroy
		@tvshow = Tvshow.find params[:id]
		@tvshow.destroy
		redirect_to tvshows_path
	end

private
def tvshow_params
	params.require(:tvshow).permit(:title, :plot, :network, :country, :poster, :premiere_date)
end

end