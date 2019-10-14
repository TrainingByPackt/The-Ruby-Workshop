require "minitest/autorun"
class Excercise < Minitest::Test
  def test_script
    output = `ruby ./lambdas-syntax.rb`
    assert_match /Hello World/, output
  end
end
