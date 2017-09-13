require './lib/book'

describe Book, '#new' do
  context 'with required values' do
    it 'should be created successfully' do
      expect(Book.new({title: 'Eloquent Ruby'})).to be_a(Book)
    end
  end
  context 'with missing required values' do
    it 'should failed if title is missing' do
      expect {Book.new({})}.to raise_error('No Title')
    end
  end
end
