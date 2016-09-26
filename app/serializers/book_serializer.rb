class BookSerializer < ActiveModel::Serializer
  attributes :id, :author, :title, :borrowers
end

# :author is showing author b/c of the model
# where it says book belongs_to :author
