# 1. The first line tells Ruby that we’re using the ActiveRecord migration DSL to create a migration.
# 2. The second line tells Ruby that we’re adding a new column to the comments table.
# 3. The third line tells Ruby that the new column is called status and that it’s a string.
class AddStatusToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :status, :string
  end
end
