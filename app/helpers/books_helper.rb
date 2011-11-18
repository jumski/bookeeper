module BooksHelper
  COVER_TYPES_TO_LABELS = { soft: 'miękka', stiff: 'twarda' }
  CONDITONS_TO_LABELS   = { mint: 'idealny', excellent: 'bardzo dobry',
                            good: 'dobry', average: 'przeciętny' }

  def cover_types_options
    Book::COVER_TYPES.collect do |name, id|
      [ COVER_TYPES_TO_LABELS[name], id]
    end
  end

  def conditions_options
    Book::CONDITIONS.collect do |name, id|
      [ CONDITONS_TO_LABELS[name], id]
    end
  end

  def cover_type_label(cover_type)
    cover_type_id = Book::COVER_TYPES.key(cover_type)

    COVER_TYPES_TO_LABELS[cover_type_id]
  end

  def condition_label(condition)
    condition_id = Book::CONDITIONS.key(condition)

    CONDITONS_TO_LABELS[condition_id]
  end
end
