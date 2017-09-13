class Book
  attr_accessor :isbn, :title, :author
  def initialize args
    raise ArgumentError.new('No Title') if args[:title].nil?
  end
end
