class RecitmentsController < ApplicationController

	def index
		@recitments = Recitment.all
	end

	def show
		@recitment = Recitment.find(params[:id])
		@recitment_comment = RecitmentComment.new

	end

	def new
		@recitment = Recitment.new
	end

	def edit
		@recitment = Recitment.find(params[:id])
	end

	def update
		recitment = Recitment.find(params[:id])
		recitment.update(recitment_params)
		redirect_to root_path
	end

	def create
		@recitment = current_user.recitments.new(recitment_params)
		@recitment.save
		redirect_to root_path(@recitment.id)
	end


	

	def destroy
		@recitment = Recitment.find(params[:id])
		@recitment.destroy
		redirect_to root_path
	end

	private
	def recitment_params
		params.require(:recitment).permit(:prefecture_code, :title, :comment, :running_couse, :nambar_people, :practice, :runtime)

	end
end
