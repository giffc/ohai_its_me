class CreateLetMeInLinkedAccounts < ActiveRecord::Migration
  def change
    create_table :linked_accounts do |t|
      t.integer :user_id
      t.string :type
      t.string :app_username
      t.string :app_user_id
      t.string :token
      t.string :secret
      t.string :refresh_token
      t.string :image_url
      t.string :url
      t.timestamps :expires_at
      t.timestamps
    end
  end
end
