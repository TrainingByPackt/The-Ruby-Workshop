require "minitest/autorun"
class Excercise < Minitest::Test
  def test_script
    output = `ruby ./Exercise9.05.rb`
    assert_match /21/, output
  end
end