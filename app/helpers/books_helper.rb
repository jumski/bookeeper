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
end
