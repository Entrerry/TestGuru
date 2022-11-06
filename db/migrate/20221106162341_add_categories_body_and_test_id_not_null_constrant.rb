class AddCategoriesBodyAndTestIdNotNullConstrant < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:categories, :body, false)
    change_column_null(:categories, :test_id, false)
  end
end
