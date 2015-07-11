class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :text_comment, null: false
      t.integer :book_id, null: false

      t.timestamps null: false
    end
  end
end
