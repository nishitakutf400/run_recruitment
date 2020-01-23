class RecitmentComment < ApplicationRecord
	belongs_to :user
  	belongs_to :recitment
end
