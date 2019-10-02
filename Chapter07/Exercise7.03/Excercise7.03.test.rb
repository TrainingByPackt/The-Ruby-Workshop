require "minitest/autorun"
class Excercise < Minitest::Test
  def test_script
    `ruby ./Exercise7.03.rb`
    assert File.exist?('new_users.csv')
    content = File.read('new_users.csv')
    assert_match /John Smith,36,Sydney/, content
    assert_match /Susan Alan,31,San Francisco/, content
    assert_match /Daniel Jones,43,New York/, content
  end
end
