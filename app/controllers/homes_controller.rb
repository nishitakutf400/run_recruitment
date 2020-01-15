class HomesController < ApplicationController
	def top
		@recitment = Recitment.all
	end

	def about
	end
	
end
