class CreateGifts < ActiveRecord::Migration[5.1]
  def change
    create_table :gifts do |t|
      t.string :title
      t.integer :cost
      t.text :description
      t.string :link
      t.integer :receiver_id
      t.integer :giver_id
      t.timestamps
    end
  end
end
