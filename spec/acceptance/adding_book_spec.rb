
feature "Book adding" do
  background do
    visit '/books/new'
  end

  scenario "happy path" do
    within("#new_book") do
      fill_in 'Tytuł', :with => 'Pan Tadeusz'
      fill_in 'Autor', :with => 'Adam Mickiewicz'
      fill_in 'Wydawnictwo', :with => 'Sowa'
      fill_in 'Liczba stron', :with => '23'
      select '2010', :from => 'Rok wydania'
      select 'miękka', :from => 'Rodzaj okładki' 
      select 'idealny', :from => 'Stan'

      find_button("Zapisz").click
    end

    ['Pan Tadeusz', 'Adam Mickiewicz', 'Sowa',
     '2010', 'miękka', 'idealny'].each do |text|
      page.should have_content(text)
    end

    page.should_not have_content('Zapisz')
    page.should have_content "Edytuj"
  end
end
