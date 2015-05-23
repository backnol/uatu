class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.string :title
      t.text :text
      t.string :image
      t.text :videos
      t.text :tags
      t.string :lang
      t.text :description
      t.text :favicon
      t.text :url

      t.timestamps null: false
    end
  end
end
