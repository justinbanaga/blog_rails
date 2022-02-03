# 1. The class name is AddStatusToArticles.
# 2. The method name is change.
# 3. The method is adding a new column called status to the articles table.
# 4. The method is adding a string column.
class AddStatusToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :status, :string
  end
end
