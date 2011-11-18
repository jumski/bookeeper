class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :publishing_house
      t.integer :year_of_publication
      t.integer :number_of_pages
      t.integer :cover_type
      t.integer :condition

      t.timestamps
    end
  end
end
