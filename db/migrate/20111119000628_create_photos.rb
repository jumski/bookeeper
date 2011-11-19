class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image_file_name, :string
      add_column :users, :avatar_content_type, :string
      add_column :users, :avatar_file_size,    :integer
      add_column :users, :avatar_updated_at,   :datetime
      t.timestamps
    end
  end
end
