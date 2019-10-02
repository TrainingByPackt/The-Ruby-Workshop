require "minitest/autorun"
class Excercise < Minitest::Test
  def test_script
    5.times { `ruby ./Exercise8.02.rb` }
    assert File.exist?('log.txt')
    assert File.exist?('log.txt.0')
    assert File.exist?('log.txt.1')
    assert File.exist?('log.txt.2')
    assert File.exist?('log.txt.3')
  end
end
