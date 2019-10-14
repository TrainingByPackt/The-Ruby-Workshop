require "minitest/autorun"
class Excercise < Minitest::Test
  def test_script
    output = `ruby ./block-iterator.rb`
    assert output.end_with?("*****\n")
  end
end
