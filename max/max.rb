require 'minitest/autorun'

def max(array)
  max_num = array[0]

  array.each do |element|
    if element > max_num
      max_num = element
    end
  end
  max_num
end

class TestSolution < Minitest::Test
  def test_case
    assert_equal 7, max([1,2,3,4,5,6,7])
  end

  def test_case_2
    assert_equal 120, max([1,2,3,4,5,120,6,7,8,9])
  end

  def test_case_3
    assert_equal 120, max([120,2,3,4,5,6,7,8,9])
  end

end
