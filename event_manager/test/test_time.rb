gem 'minitest', '~> 5.0'

require 'minitest/autorun'
require 'minitest/pride'
require 'simplecov'
SimpleCov.start 'rails'

require_relative '../lib/time.rb'

class TimeTargetingTest < Minitest::Test
  def test_which_hours_of_the_day_most_ppl_registered
    ary = [1, 2, 3, 3]
    assert_equal(3, ary.most_hours)
  end
end
