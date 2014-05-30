class AuthorBookForm < Reform::Form
  property :name

  collection :books, save: false do
    property :title
  end
end
