class UpdateMediaDescriptionType < ActiveRecord::Migration
  def up
    change_column :media, :description, :text
  end

  def down
  end
end
