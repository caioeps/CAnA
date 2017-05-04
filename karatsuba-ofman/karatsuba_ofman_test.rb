require "./karatsuba_ofman"
require "test/unit"

class TestKaratsubaOfman < Test::Unit::TestCase
  include KaratsubaOfman

  def test_multiplication_with_up_to_three_digits
    assert_equal multiplication(200, 450, 3), 90_000
  end

  def test_multiplication_with_many_digits
    assert_equal multiplication(1_450_130, 5_608_350, 7), 1_450_130 * 5_608_350
  end
end
