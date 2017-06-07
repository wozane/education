gem 'minitest', '~> 5.0'

require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/validate_phone_number.rb'

class ValidatePhoneTest < Minitest::Test
  def test_the_number_of_digits
    exception = assert_raises(ArgumentError) { ValidatePhoneNumber.validate!('123456') }
    assert_equal(exception.message, 'Invalid phone number length')
  end

  def test_that_the_code_will_not_accept_invalid_format
    exception = assert_raises(ArgumentError) { ValidatePhoneNumber.validate!(nil) }
    assert_equal(exception.message, 'Invalid phone format')
  end

  def test_the_code_return_correct_number
    assert_equal('1234567890', ValidatePhoneNumber.validate!('1234567890'))
  end

  def test_if_the_number_is_11_digit_long_and_if_the_first_digit_is_1_then_trim
    assert_equal('2345678901', ValidatePhoneNumber.validate!('12345678901'))
  end

  def test_will_not_accept_numbers_longer_than_11_and_first_digit_not_1
    exception = assert_raises(ArgumentError) { ValidatePhoneNumber.validate!('23456789012') }
    assert_equal(exception.message, 'Invalid phone number')
  end
end
