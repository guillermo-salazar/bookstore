require "./lib/book_parser"
require 'json'
describe BookParser, '#from_json' do
  it "should return a book object" do
    json = {
      'title' =>  'book title',
      'isbn' =>   '111-1111111111',
      'author' => 'Author'
    }.to_json

    expected_result = Book.new({title: 'book title', isbn: '111-1111111111', author: 'Author'})
    actual_result = BookParser.from_json(json)
    expect( actual_result ).to be_a( Book )
    expect( actual_result.title ).to be( expected_result.title )
  end
end
