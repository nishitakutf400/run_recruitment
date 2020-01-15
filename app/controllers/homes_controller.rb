class HomesController < ApplicationController
	def top
		@recitments = Recitment.all
	end

	def about
	end

end
