require "minitest/autorun"

class Excercise < Minitest::Test
  def test_script
    output = `ruby ./Activity2.01.rb`
    assert_match /^(#{(1..6).to_a * '|'})$/, output.split("\n")[3]
    assert_match /^(#{(1..14).to_a * '|'})$/, output.split("\n").last
  end
end
