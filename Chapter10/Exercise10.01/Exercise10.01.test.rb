require "minitest/autorun"
class Excercise < Minitest::Test
  def test_script
    output = `ruby ./Exercise10.01.rb`
    assert_match /My favorite book is Ruby Fundamentals/, output
  end
end