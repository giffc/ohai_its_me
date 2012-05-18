class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.integer :post_id
      t.string :embed_type
      t.string :version
      t.string :title
      t.string :author_name
      t.string :author_url
      t.string :provider_name
      t.string :provider_url
      t.string :cache_age
      t.string :thumbnail_url
      t.integer :thumbnail_width
      t.integer :thumbnail_height
      t.string :description
      t.string :url
      t.integer :width
      t.integer :height
      t.text :html
      t.integer :width
      t.integer :height
      t.timestamps
    end
  end
end
