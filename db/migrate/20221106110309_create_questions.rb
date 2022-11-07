class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :body, null: false
      t.belongs_to :test, null: false

      t.timestamps
    end
  end
end
