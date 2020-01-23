class HomesController < ApplicationController
	def top
		@recitments = Recitment.where('runtime > ?', Time.zone.today)
	end

	def about
	end



end

