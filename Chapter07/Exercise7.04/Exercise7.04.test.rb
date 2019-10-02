require "minitest/autorun"
class Excercise < Minitest::Test
  def test_script
    output = `ruby ./Exercise7.04.rb`
    assert_match /User 0: John/, output
    assert_match /User 1: Susy/, output
    assert_match /User 2: Sarah/, output
    assert_match /User 3: James/, output
  end
end
