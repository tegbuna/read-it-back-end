class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :book_id
      t.boolean :have_read
      t.string :genre
      t.string :description

      t.timestamps
    end
  end
end
