class Book
  attr_accessor :isbn, :title, :author
  def initialize args = nil
    raise ArgumentError.new('No Title') if args[:title].nil?
    raise ArgumentError.new('No ISBN') if args[:isbn].nil?
    raise ArgumentError.new('No Author') if args[:author].nil?
    @isbn = args[:isbn]
    @title = args[:title]
    @author = args[:author]
  end
end
