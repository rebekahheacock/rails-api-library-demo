class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :given_name, :surname, :books
end

# :books will list all books that have matching author_id
# though it's not using books serializer
# so we'll see *ALL* data from books,
# not just the data we're approving through the serializer
