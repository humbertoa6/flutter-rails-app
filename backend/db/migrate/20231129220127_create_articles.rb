class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :author, null: false
      t.string :title, index: true, null: false
      t.text :description, null: false
      t.string :url, null: false
      t.string :url_to_image, null: false
      t.datetime :published_at, null: false
      t.text :content, null: false
      t.text :source, null: false

      t.timestamps
    end
  end
end
