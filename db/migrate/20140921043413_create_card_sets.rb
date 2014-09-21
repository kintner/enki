class CreateCardSets < ActiveRecord::Migration
  def change
    create_table :card_sets do |t|
      t.integer :user_id, null:false
      t.foreign_key :users

      t.string :title, null: false
      t.time :last_used_at

      t.timestamps
    end
  end
end
