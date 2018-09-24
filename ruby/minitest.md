require "minitest/autorun"

class MiniTestSample < Minitest::Test
  def setup
      @array = Array.new
      @string = "OHAI!"
  end

  def test_that_kitty_can_eat
    assert_equal "OHAI!", @string
  end

  def test_that_will_be_skipped
    skip "test this later"
  end
end
