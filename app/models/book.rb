class Book < ActiveRecord::Base
  belongs_to :author
  validates :author, uniqueness: true
  # validates that we have an author and that the book is unique
end
