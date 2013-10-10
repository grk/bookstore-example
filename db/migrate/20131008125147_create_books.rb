class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :number_of_pages
      t.string :coverimage
      t.integer :publish_date

      t.timestamps
    end
  end
end
