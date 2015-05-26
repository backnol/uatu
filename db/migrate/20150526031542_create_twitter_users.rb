class CreateTwitterUsers < ActiveRecord::Migration
  def change
    create_table :twitter_users do |t|
      t.string :screen_name
      t.string :name
      t.text :description
      t.string :profile_image_url
      t.string :profile_image_url_https

      t.timestamps null: false
    end
  end
end
