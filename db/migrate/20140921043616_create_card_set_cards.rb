class CreateCardSetCards < ActiveRecord::Migration
  def change
    create_table :card_set_cards do |t|
      t.integer :user_id, null: false
      t.foreign_key :users

      t.integer :card_set_id, null: false
      t.foreign_key :card_sets

      t.integer :card_id, null: false
      t.foreign_key :cards


      t.timestamps
    end
  end
end
