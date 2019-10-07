require "minitest/autorun"
class Excercise < Minitest::Test
  def test_script
    output = `ruby ./basic-logger.rb`
    assert_match /Inside basic logger/, output
    assert_match /Back from Basic logger/, output
    assert_match /Method statement/, output
    assert output.end_with?("**\n")
  end
end
