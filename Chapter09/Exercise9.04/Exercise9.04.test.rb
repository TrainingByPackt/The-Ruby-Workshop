require "minitest/autorun"
class Excercise < Minitest::Test
  def test_script
    output = `ruby ./Exercise9.04.rb`
    assert_match /125/, output
    assert_match /250/, output
    assert_match /375/, output
    assert_match /500/, output
  end
end
