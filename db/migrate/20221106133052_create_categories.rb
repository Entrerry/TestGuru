class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :body
      t.string :test_id

      t.timestamps
    end
  end
end
