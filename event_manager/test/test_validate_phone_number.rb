gem 'minitest', '~> 5.0'

require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/validate_phone_number.rb'

class ValidatePhoneTest < Minitest::Test
  def setup
    @phone_number = ValidatePhoneNumber.new    
  end

  def test_that_the_code_will_not_accept_invalid_format
    assert_equal("Invalid phone format", @phone_number.call(nil))  
  end

  def test_the_number_of_digits
    assert_equal("Invalid phone number length", @phone_number.call("123456"))
  end

  def test_the_code_return_correct_number
    assert_equal("1234567890", @phone_number.call("1234567890"))
  end

  def test_that_the_code_will_not_accept_numbers_longer_than_11
    assert_equal("Invalid phone number length", @phone_number.call("12345678901"))
  end

  def test_if_the_number_is_11_digit_long_and_if_the_first_digit_is_1_then_trim
    
  end

end
