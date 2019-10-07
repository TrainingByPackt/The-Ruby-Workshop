require "minitest/autorun"

class Excercise < Minitest::Test
    def test_output
        output = `ruby ./method_missing_basics.rb`
        assert_match /The method you have specified xyz does not exist/, output
    end  
end