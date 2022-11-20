class Test < ApplicationRecord
  def self.array_of_test_names_in_descending_order(category)
    by_category(category).order(title: :desc).pluck(:title)
  end
end
