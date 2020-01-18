class Recitment < ApplicationRecord
	belongs_to :user
	has_many :offers

	include JpPrefecture
 	 jp_prefecture :prefecture_code, method_name: :pref
end
