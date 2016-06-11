require 'minitest/autorun'
require_relative '../arrays_intersection'

class TestArrInt < Minitest::Test
  def test_binary_search()
    a=[2,4,6,8,10,12,16,18]
    result=binary_search(a,4)
    result1=binary_search(a,16)
    assert_equal(result,4)
    assert_equal(result1,16)
  end 
  def test_find_commonvalues()
    a=[2,4,6,8,10,12,16,18]
    b=[1,2,3,4,5,11,12]
    result=find_commonvalues(a,b)
    assert_equal(result,[2,4,12])
  end 
  def test_find_commonvalues_nocommonel() 
    a=[2,4,6,8,10,12,16,18]
    b=[1,3,5,7,9,11]
    result=find_commonvalues(a,b)
    assert_equal(result,"no common values")
  end
end