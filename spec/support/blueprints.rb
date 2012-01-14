require 'faker'
require 'machinist/active_record'

def words(no=3); Faker::Lorem.words(no).join(' '); end

# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end

Book.blueprint do
  title { words.capitalize }
  author { Faker::Name.name }
  publishing_house { words.capitalize }
  year_of_publication { 1950 + rand(62) }
  number_of_pages { 50 + rand(500) }
  cover_type { Book::COVER_TYPES.values.sample }
  condition { Book::CONDITIONS.values.sample }
end

Photo.blueprint do
  # Attributes here
end
