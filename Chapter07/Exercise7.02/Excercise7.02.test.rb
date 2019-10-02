require "minitest/autorun"
class Excercise < Minitest::Test
  def test_script
    output = `ruby ./Exercise7.02.rb`
    assert_match /Sydney/, output
    assert_match /New York/, output
    assert_match /San Francisco/, output
  end
end
