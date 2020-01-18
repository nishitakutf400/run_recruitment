class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.integer :user_id
      t.integer :recitment_id

      t.timestamps
    end
  end
end
