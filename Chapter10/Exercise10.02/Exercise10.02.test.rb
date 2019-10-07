require "minitest/autorun"
require "./Exercise10.02"

class Excercise < Minitest::Test
    def setup
        @calculation_obj = Calculation.new
    end

    def test_calculator_mp_sum
        @calculation_obj.first_number = 15
        result = @calculation_obj.sum
        assert_equal 13,result
    end  

    def test_outout_result
        output = `ruby ./Exercise10.02.rb`
        assert_match /12/, output
        assert_match /8/, output
    end
end