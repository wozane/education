require 'simplecov'
SimpleCov.start 'rails'

require 'minitest/autorun'
require 'minitest/pride'

require_relative 'calendar.rb'

class CalendarTest < Minitest::Test

  def test_adding_one_day
    assert_equal('2017-3-13', Calendar.add_one_day(2017, 3, 12))
  end

  def test_adding_day_to_31_day_long_month
    assert_equal('2017-6-1', Calendar.add_one_day(2017, 5, 31))
  end

  def test_adding_day_to_30_day_long_month
    assert_equal('2017-5-1', Calendar.add_one_day(2017, 4, 30))
  end

  def test_adding_day_to_28_day_long_month
    assert_equal('2017-3-1', Calendar.add_one_day(2017, 2, 28))
  end

  def test_adding_day_to_30_if_month_is_31_day_long_month
    assert_equal('2017-5-31', Calendar.add_one_day(2017, 5, 30))
  end

  def test_adding_day_to_month_12
    assert_equal('2018-1-1', Calendar.add_one_day(2017, 12, 31))
  end

  def test_adding_day_to_month_2_during_leap_year_to_28
    assert_equal('2016-2-29', Calendar.add_one_day(2016, 2, 28))
  end

  def test_adding_day_to_month_2_during_leap_year
    assert_equal('2016-3-1', Calendar.add_one_day(2016, 2, 29))
  end
end
