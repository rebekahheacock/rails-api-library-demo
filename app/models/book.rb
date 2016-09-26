class Book < ActiveRecord::Base
  belongs_to :author
  validates :author, uniqueness: true
  # validates that we have an author and that the book is unique
  has_many :books, through: :loans
  has_many :loans
end
