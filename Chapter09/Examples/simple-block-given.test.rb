require "minitest/autorun"
class Excercise < Minitest::Test
  def test_script
    output = `ruby ./simple-block-given.rb`
    assert_match /Part one of my_method code/, output
    assert_match /Yield code from the Block if block is given/, output
    assert_match /Part two of my_method code/, output
  end
end
