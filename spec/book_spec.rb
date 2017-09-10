require './lib/book'

describe Book, "#new" do
  context "with required values" do
    it "should be created successfully" do
      expect(Book.new()).to be_a(Book)
    end
  end
end
