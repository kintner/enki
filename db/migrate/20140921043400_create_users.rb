class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :last_name
      t.string :first_name
      t.string :email
      t.string :yammer_guid
      t.string :oauth_token
      t.string :yammer_title
      t.string :yammer_department
      t.string :photo_url
      t.timestamps
    end
  end
end
