require 'spec_helper'

describe Book do
  it "Creates a book" do
    book = Book.new(
      name: "Everyman",
      author: "Philip Roth"
    )
    expect(book.valid?).to eq true

  end
end