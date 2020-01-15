class RenamePrefectureColumnToRecitments < ActiveRecord::Migration[5.2]
  def change
  	rename_column :recitmentsdb, :prefecture, :prefecture_code
  end
end
