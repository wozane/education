require 'simplecov'
SimpleCov.start 'rails'

require 'minitest/autorun'
require 'minitest/pride'

require_relative 'calendar.rb'

class TestLeapYear < Minitest::Test
  def test_if_2016_is_leap_year
    assert_equal(true, year_leap?(2016))
  end

  def test_that_1900_is_not_eap_year
    assert_equal(false, year_leap?(1900))
  end

  def test_that_1999_is_not_eap_year
    assert_equal(false, year_leap?(1999))
  end

  def test_that_1600_is_leap_year
   assert_equal(true, year_leap?(1600))
 end 
end