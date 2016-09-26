class Borrower < ActiveRecord::Base
  has_many :borrowers, through: :loans
  has_many :loans
end
