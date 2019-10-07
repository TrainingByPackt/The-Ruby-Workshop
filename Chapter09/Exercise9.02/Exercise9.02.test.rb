require "minitest/autorun"
class Excercise < Minitest::Test
  def test_script
    output = `ruby ./Exercise9.02.rb`
    assert_match /Flight Status changer starting/, output
    assert_match /Changing flight status…/, output
    assert_match /Flight status was changed!/, output
    assert_match /Changed Flight status to Departure/, output
    assert_match /Flight Status changer ended/, output
  end
end