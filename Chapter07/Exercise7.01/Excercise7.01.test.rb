require "minitest/autorun"
class Excercise < Minitest::Test
  def test_script
    output = `ruby ./Exercise7.01.rb`
    assert_match /| Name  | City     |/, output
    assert_match /| James | Sydney   |/, output
    assert_match /| Chris | New York |/, output
  end
end
