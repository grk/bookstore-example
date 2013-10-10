class CreateBooksSubjects < ActiveRecord::Migration
  def change
    create_table :books_subjects do |t|
      t.belongs_to :book
      t.belongs_to :subject
    end
  end
end
