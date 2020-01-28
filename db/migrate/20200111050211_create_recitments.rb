class CreateRecitments < ActiveRecord::Migration[5.2]
  def change
    create_table :recitments do |t|
      t.integer :user_id, null: false
      t.integer :prefecture, null: false
      t.text :title, null: false
      t.string :postal_code
      t.string :address
      t.text :comment, null: false
      t.text :practice, null: false
      t.text :running_couse, null: false
      t.integer :nambar_people, null: false
      t.datetime :runtime, null: false
    end
  end
end
