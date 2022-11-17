class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.string :body, null: false
      t.belongs_to :question, null: false, foreign_key: true
      t.boolean :correct, null: false, default: false

      t.timestamps
    end
  end
end
