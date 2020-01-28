class Recitment < ApplicationRecord
	belongs_to :user
	has_many :offers, dependent: :destroy
	has_many :recitment_comments, dependent: :destroy
	validates :title, presence: true, length: { maximum: 50 , message:'error' }
	validates :running_couse, presence: true, length: { maximum: 100, message:'error'  }
	validates :practice, presence: true, length: { maximum: 50, message:'error'  }
	validates :comment, presence: true, length: { maximum: 200, message:'error'  }
	validates :nambar_people, presence: true
	validates :runtime, presence: true
	validates :prefecture_code, presence: true

	def favorited_by?(user)
          offers.where(user_id: user.id).exists?
        end

	include JpPrefecture
 	 jp_prefecture :prefecture_code, method_name: :pref
end
