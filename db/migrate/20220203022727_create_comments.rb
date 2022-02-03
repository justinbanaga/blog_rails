# 1. Create a new table called comments.
# 2. Add a column called commenter that will hold a string.
# 3. Add a column called body that will hold a text.
# 4. Add a column called article_id that will hold an integer.
# 5. Add a foreign key to the article_id column that references the id column in the articles table.
# 6. Add timestamps.
class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
