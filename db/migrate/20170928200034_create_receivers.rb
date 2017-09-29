class CreateReceivers < ActiveRecord::Migration[5.1]
  def change
    create_table :receivers do |t|
      t.string :first_name
      t.string :last_name
      t.string :relationship
      t.integer :giver_id
      t.timestamps
    end
  end
end
