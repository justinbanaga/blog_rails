# 1. Create a new migration file with the name of the table you want to create.
# 2. Define a method called change that takes in a block.
# 3. Inside the block, create a new table with the name of the table you want to create.
# 4. Add the columns you want to create.
# 5. Add the timestamps method to the end of the block.
class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
