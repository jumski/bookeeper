require 'spec_helper'

describe "books/edit.html.haml" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :title => "MyString",
      :author => "MyString",
      :publishing_house => "MyString",
      :year_of_publication => 1,
      :number_of_pages => 1,
      :cover_type => 1,
      :condition => 1
    ))
  end

  it "renders the edit book form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => books_path(@book), :method => "post" do
      assert_select "input#book_title", :name => "book[title]"
      assert_select "input#book_author", :name => "book[author]"
      assert_select "input#book_publishing_house", :name => "book[publishing_house]"
      assert_select "input#book_year_of_publication", :name => "book[year_of_publication]"
      assert_select "input#book_number_of_pages", :name => "book[number_of_pages]"
      assert_select "input#book_cover_type", :name => "book[cover_type]"
      assert_select "input#book_condition", :name => "book[condition]"
    end
  end
end
