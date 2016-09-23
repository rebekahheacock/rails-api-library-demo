class AddAuthorRefToBooks < ActiveRecord::Migration
  def change
    add_reference :books, :author, index: true, foreign_key: true
  end
end

# bundle exec rails g migration AddAuthorRefToBooks author:references