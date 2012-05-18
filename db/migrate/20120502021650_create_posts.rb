class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :linked_account_id
      t.string  :permalink
      t.string  :activity_type
      t.string  :title
      t.text    :content
      t.string  :author_name
      t.string  :author_url
      t.string  :author_image
      t.string  :source_id
      t.datetime  :source_created_at
    end
  end
end
