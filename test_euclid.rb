require 'minitest/autorun'
require 'minitest/pride'

require_relative 'euclid.rb'

class TestEuclid < Minitest::Test
  def test_gcd_method_1
    assert_equal(4, gcd(4, 12))
  end

  def test_gcd_method_2
    assert_equal(1, gcd(74, 99))
  end

  def test_gcd_method_3
    assert_equal(1, gcd(123, 8780))
  end

  def test_gcd_method_4
    assert_equal(123, gcd(123, 0))
  end

  def test_gcd_method_5
    assert_equal(3, gcd(-3, 9))
  end

  def test_gcd_method_6
    assert_equal(2, gcd(12345678, 10))
  end
end
