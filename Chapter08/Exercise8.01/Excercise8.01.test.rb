require "minitest/autorun"
class Excercise < Minitest::Test
  def test_script
    output = `ruby ./Exercise8.01.rb`
    assert_match /ERROR -- : divided by 0/, output
  end
end
