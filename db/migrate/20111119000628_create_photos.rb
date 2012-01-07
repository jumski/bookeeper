class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.has_attached_file :image
      t.references :book
      t.timestamps
    end

    change_table :books do |t|
      t.references :photo
    end
  end
end
