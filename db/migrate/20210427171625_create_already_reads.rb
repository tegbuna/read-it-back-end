class CreateAlreadyReads < ActiveRecord::Migration[6.1]
  def change
    create_table :already_reads do |t|
      t.string :title
      t.string :author
      t.string :book_id
      t.string :have_read

      t.timestamps
    end
  end
end
