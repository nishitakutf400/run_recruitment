class Recitment < ApplicationRecord
	belongs_to :user

	include JpPrefecture
 	 jp_prefecture :prefecture_code, method_name: :pref
end
