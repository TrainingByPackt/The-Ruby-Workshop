require "minitest/autorun"
require "./respond_to_missing_basics"

class Excercise < Minitest::Test
    def test_method_missing
        object = MyClass.new
        assert_equal true, object.respond_to?(:xyz) 
    end  

    def test_output
        output = `ruby ./respond_to_missing_basics.rb`
        assert_match /You are now in ghost method/, output
    end  
end