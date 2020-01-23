class OffersController < ApplicationController

	def thank
	end

    def show
        @recitment = Recitment.find(params[:recitment_id])
        @offers = @recitment.offers
        # @users = Offer.where(recitment_id: 1)
    end

	def create
            recitment = Recitment.find(params[:recitment_id])
            @offer = current_user.offers.new(recitment_id: recitment.id)
            @offer.save
            redirect_to offers_thank_path
        end
        def destroy
            recitment = Recitment.find(params[:recitment_id])
            @offer = current_user.offers.find_by(recitment_id: recitment.id)
            @offer.destroy
            redirect_back fallback_location: root_path
        end

end
