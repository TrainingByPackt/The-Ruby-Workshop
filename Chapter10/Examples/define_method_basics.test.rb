require "minitest/autorun"
require "./define_method_basics"

class Excercise < Minitest::Test
    def setup
        @factory = Factory.new
    end

    def test_factory_output
        assert_equal @factory.operate_machinery("Manchester"), "Starting machines on all assembly lines in Manchester"
        assert_equal @factory.package_products("healthcare"), "Packaging healthcare products "
        assert_equal @factory.send_for_distribution("medical stores"), "Sending for distribution for medical stores"
        assert_equal @factory.generate_exit_pass("trucks"), "Generate exit pass for trucks"
    end  
end