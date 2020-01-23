class CreateRecitmentComments < ActiveRecord::Migration[5.2]
  def change
    create_table :recitment_comments do |t|
    	t.integer :user_id
     	t.integer :recitment_id
     	t.text :comment
      t.timestamps
    end
  end
end
