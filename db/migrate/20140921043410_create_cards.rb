class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :user_id, null: false
      t.foreign_key :users

      t.integer :person_id, null: false
      #t.foreign_key :person, 'users'
      t.timestamps
    end
  end
end
