class RemoveColumns < ActiveRecord::Migration
  def up
  	remove_column :users, :image_file_name, :image_content_type, :image_file_size, :image_updated_at
  end

  def down
  end
end
