class Book < ActiveRecord::Base
  has_many :photos, :dependent => :destroy
  accepts_nested_attributes_for :photos, :allow_destroy => true

  COVER_TYPES = { soft: 1, stiff: 2 }
  CONDITIONS = { mint: 1, excellent: 2, good: 3, average: 4 }

  validates_presence_of :title, :author, :publishing_house,
                        :year_of_publication, :number_of_pages,
                        :cover_type, :condition

  validates_numericality_of :year_of_publication, :number_of_pages

  validate :cover_type_from_list, :condition_from_list

  def cover_type_from_list
    unless COVER_TYPES.has_value? cover_type
      errors.add(:cover_type, 'must be choosen from list')
    end
  end

  def condition_from_list
    unless CONDITIONS.has_value? condition
      errors.add(:condition, 'must be choosen from list')
    end
  end

  def main_photo
    photos.first
  end

  def gallery_photos
    photos[1..-1]
  end

end
