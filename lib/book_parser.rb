require 'json'

class BookParser
  def self.from_json json
    book = JSON.parse(json)
    title = book['title']
    isbn = book['isbn']
    author = book['isbn']
    Book.new({ title: title, isbn: isbn, author: author })
  end
end
