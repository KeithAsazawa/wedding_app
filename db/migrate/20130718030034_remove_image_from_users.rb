class RemoveImageFromUsers < ActiveRecord::Migration
  def up
  	remove_column :users, :image_updated_at
  end

  def down
  end
end
