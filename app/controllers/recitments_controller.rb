class RecitmentsController < ApplicationController
	def new
		@recitment = Recitment.new
	end

	def create
		@recitment = current_user.recitments.new(recitment_params)
		@recitment.save
		redirect_to root_path(@recitment.id)
	end

	private
	def recitment_params
		params.require(:recitment).permit(:prefecture_code, :title, :comment)

	end
end
