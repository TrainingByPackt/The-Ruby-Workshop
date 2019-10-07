require "minitest/autorun"
class Excercise < Minitest::Test
  def test_script
    output = `ruby ./proc-vs-lambda.rb`
    assert_match /Statement from the method/, output
    assert_match /Statement from the block/, output
  end
end
