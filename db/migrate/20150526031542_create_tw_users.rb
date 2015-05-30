class CreateTwUsers < ActiveRecord::Migration
  def change
    create_table :tw_users do |t|
      t.string :screen_name
      t.string :name
      t.text :description
      t.string :profile_image_url

      t.timestamps null: false
    end

    add_index :tw_users, :screen_name, unique: true
  end
end
