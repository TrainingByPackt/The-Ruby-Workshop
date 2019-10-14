require "minitest/autorun"
require "./Exercise10.03"

class Excercise < Minitest::Test
    def setup
        @new_employee = Company.new("John", "007", "Tokyo")
    end

    def test_employee_details
        assert_equal @new_employee.employee_location, "Tokyo"
        assert_equal @new_employee.employee_id, "007"
        assert_equal @new_employee.employee_name, "John"
    end  

    def test_output_results
        output = `ruby ./Exercise10.03.rb`
        assert_match /Tokyo/, output
        assert_match /true/, output
    end
end