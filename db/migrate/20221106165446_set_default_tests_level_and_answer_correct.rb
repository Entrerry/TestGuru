class SetDefaultTestsLevelAndAnswerCorrect < ActiveRecord::Migration[6.1]
  def change
    change_column_default(:tests, :level, from: "0", to: "3")
    change_column_default(:answers, :correct?, from: "false", to: "true")
  end
end
