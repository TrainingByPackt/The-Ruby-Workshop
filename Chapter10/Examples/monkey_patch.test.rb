require "minitest/autorun"

class Excercise < Minitest::Test
    def test_factory_output
        output = `ruby ./monkey_patch.rb`
        assert_match /5/, output
    end  
end