require './lib/book'

describe Book, '#new' do
  context 'with required values' do
    it 'should be created successfully' do
      expect(Book.new({title: 'Eloquent Ruby', isbn: '978-0321584106', author: 'Russ Olsen'})).to be_a(Book)
    end
  end
  context 'with missing required values' do
    it 'should fail if title is missing' do
      expect {Book.new({author: 'Russ Olsen', isbn: '978-0321584106'})}.to raise_error('No Title')
    end
    it 'should fail if isbn is missing' do
      expect {Book.new({title: 'Eloquent Ruby', author: 'Russ Olsen'})}.to raise_error('No ISBN')
    end
    it 'should fail if author is missing' do
      expect {Book.new({title: 'Eloquen Ruby', isbn: '978-0321584106'})}.to raise_error('No Author')
    end
  end
end
