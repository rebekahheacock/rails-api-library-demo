class Borrower < ActiveRecord::Base
  has_many :books, through: :loans
  # dependent: :destroy means when you delete a book,
  # all related loans get deleted
  has_many :loans, dependent: :destroy
end
