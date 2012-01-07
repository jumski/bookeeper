class Photo < ActiveRecord::Base
  belongs_to :book

  has_attached_file :image, :styles => { :small => '80x150>', :medium => '200x400>', :large => '600x800>' }
  validates_attachment_presence :image
  validates_attachment_size :image, :less_than => 5.megabytes
end
