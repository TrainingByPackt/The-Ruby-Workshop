require "minitest/autorun"
require "./open_class_integer"

class Excercise < Minitest::Test
    def test_factory_output
        output = 10.add_eight
        assert_equal 18, output
    end  
end