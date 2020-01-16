class RecitmentsController < ApplicationController

	def index
		@recitments = Recitment.all
	end

	def new
		@recitment = Recitment.new
	end

	def create
		@recitment = current_user.recitments.new(recitment_params)
		@recitment.save
		redirect_to root_path(@recitment.id)
	end

	def show
		@recitment = Recitment.find(params[:id])
	end

	private
	def recitment_params
		params.require(:recitment).permit(:prefecture_code, :title, :comment)

	end
end
