class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.references :borrower, index: true, foreign_key: true
      t.references :book, index: true, foreign_key: true
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
