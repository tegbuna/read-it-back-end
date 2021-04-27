class CreateWantToReads < ActiveRecord::Migration[6.1]
  def change
    create_table :want_to_reads do |t|
      t.string :title
      t.string :author
      t.string :book_id
      t.boolean :have_read

      t.timestamps
    end
  end
end
