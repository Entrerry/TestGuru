class User < ApplicationRecord
  def list_of_tests_that_the_user_has_passed(test_level)
    tests.where(test_level:)
  end
end
