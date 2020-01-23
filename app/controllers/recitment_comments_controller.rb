class RecitmentCommentsController < ApplicationController
	def create
		recitment = Recitment.find(params[:recitment_id])
		comment = current_user.recitment_comments.new(recitment_comment_params)
    	comment.recitment_id = recitment.id
    	comment.save
    	redirect_to root_path
	end

	def destroy
		comment = RecitmentComment.find(params[:recitment_id])
		if current_user.id == comment.user_id
		comment.destroy
	end
		redirect_back ({ fallback_location: root_path })
	end


private
	def recitment_comment_params
		params.require(:recitment_comment).permit(:comment, :user_id, :recitment_id)
	end

end
