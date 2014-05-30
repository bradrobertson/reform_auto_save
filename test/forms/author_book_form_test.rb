require 'test_helper'

class AuthorBookFormTest < ActiveSupport::TestCase
  test "it doesnt save books collection automatically" do
    author = Author.new name: 'George RR Martin'
    author.books.build title: 'A Game of Thrones'
    author.books.build title: 'A Clash of Kings'

    form = AuthorBookForm.new(author)
    form.save

    refute form.books.first.persisted?, "Book should NOT be persisted"
    refute form.books.second.persisted?, "Book should NOT be persisted"
  end
end
