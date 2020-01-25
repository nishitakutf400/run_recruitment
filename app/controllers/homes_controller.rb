class HomesController < ApplicationController
	PER = 8
	def top
		search = params[:search]
    	@recitments = Recitment.where('runtime > ?', Time.zone.today).where(['comment LIKE ? or practice LIKE ? or title LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"]).page(params[:page]).per(PER)
    	@q = Recitment.where('runtime > ?', Time.zone.today).where(['comment LIKE ? or practice LIKE ? or title LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"]).ransack(params[:q])
  		@recitments = @q.result(distinct: true).page(params[:page]).per(PER)
	end

	def about
	end



end


