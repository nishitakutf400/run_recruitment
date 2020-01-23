class RenamePrefectureColumnToRecitments < ActiveRecord::Migration[5.2]
  def change
  	rename_column :recitments, :prefecture, :prefecture_code
  end
end
