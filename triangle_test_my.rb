# 1. Copy this file from the course notes repo into a new repository
# 2. Run `ruby triangle_test.rb`. You should see 6 error messages.
# 3. Implement the Triangle class until all 6 tests are passing.
require "minitest/autorun"
require 'pry'

class Triangle
  # Add your code here
  def initialize s1, s2, s3
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if @s1 == @s2 && @s1 == @s3
      return :equilateral
    elsif @s1 != @s2 && @s1 != @s3 && @s2 != @s3
      :scalene
    else
      :isosceles
    end
  end

  def perimeter
    @s1 + @s2 + @s3
  end
end

binding.pry

class TestMeme < Minitest::Test
  def test_equilateral
    t = Triangle.new(5,5,5)
    assert_equal :equilateral, t.kind
  end

  def test_isosceles
    s = Triangle.new(2,2,3)
    assert_equal :isosceles, s.kind
  end

  def test_other_isosceles
    t = Triangle.new 3,4,3
    assert_equal :isosceles, t.kind
  end

  def test_scalene
    t = Triangle.new 6,7,8
    assert_equal :scalene, t.kind
  end

  def test_perimeter_right
     t = Triangle.new(3,4,5) 
     assert_equal 12, t.perimeter
  end

  def test_perimeter_eq
    t = Triangle.new 10,20,30
    assert_equal 60, t.perimeter
  end
end
