class Recitment < ApplicationRecord
	belongs_to :user
	has_many :offers, dependent: :destroy
	has_many :recitment_comments, dependent: :destroy
	def favorited_by?(user)
          offers.where(user_id: user.id).exists?
        end

	include JpPrefecture
 	 jp_prefecture :prefecture_code, method_name: :pref
end
