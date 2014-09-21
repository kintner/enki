class CreateShowings < ActiveRecord::Migration
  def change
    create_table :showings do |t|
      t.integer :user_id, null:false
      t.foreign_key :users

      t.integer :card_set_id, null: false
      t.foreign_key :card_sets

      t.integer :card_id, null: false
      t.foreign_key :cards

      t.timestamp :shown_at
      t.timestamp :answered_at

      t.integer :seconds_to_answer
      t.boolean :correct

      t.timestamps
    end
  end
end
