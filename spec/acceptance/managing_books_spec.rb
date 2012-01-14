require 'spec_helper'

feature "Managing books", :js => true do
  scenario "adding happy path" do
    visit '/books/new'

    binding.pry

    within("#new_book") do
      fill_in 'Tytuł', :with => 'Pan Tadeusz'
      fill_in 'Autor', :with => 'Adam Mickiewicz'
      fill_in 'Wydawnictwo', :with => 'Sowa'
      fill_in 'Liczba stron', :with => '23'
      select '2010', :from => 'Rok wydania'
      select 'miękka', :from => 'Rodzaj okładki'
      select 'idealny', :from => 'Stan'
      attach_file "Obrazek", 'spec/support/images/1.png'

      find_button("Zapisz").click
    end

    ['Pan Tadeusz', 'Adam Mickiewicz', 'Sowa',
     '2010', 'miękka', 'idealny'].each do |text|
      page.should have_content(text)
    end

    page.should_not have_content('Zapisz')
    page.should have_content "Edytuj"
    page.should have_content "Wróć"
    page.should have_xpath("//img[contains(@src, '1.png')]")
  end

  # scenario "removing happy path" do
  #   books = Book.make!(3)
  #   book_to_remove = books.last

  #   visit books_path

  #   within "[data-id='#{book_to_remove.id}']" do
  #     click_on "Usuń"
  #   end
  # end
end
