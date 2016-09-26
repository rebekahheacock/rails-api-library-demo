class Book < ActiveRecord::Base
  belongs_to :author
  validates :author, uniqueness: true
  # validates that we have an author and that the book is unique
  has_many :borrowers, through: :loans
  has_many :loans, dependent: :destroy
end
