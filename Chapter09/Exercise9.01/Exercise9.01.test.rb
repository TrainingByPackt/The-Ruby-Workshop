require "minitest/autorun"
class Excercise < Minitest::Test
  def test_script
    output = `ruby ./Exercise9.01.rb`
    assert_match /10/, output
    assert_match /16/, output
    assert_match /6/, output
    assert_match /4/, output
  end
end
