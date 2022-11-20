class Test < ApplicationRecord
  belongs_to :category

  scope :category_name, ->(name) { joins(:category).where(category: { title: name }) }

  def self.test_by_category(name)
    category_name(name).order(title: :desc).pluck(:title)
  end
end
