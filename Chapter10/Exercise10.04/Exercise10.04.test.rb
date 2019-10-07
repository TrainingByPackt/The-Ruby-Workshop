require "minitest/autorun"
require "./Exercise10.04"

class Excercise < Minitest::Test
    def setup
        @greeting = WelcomeMessage.new
    end

    def test_employee_details
        @france_reader = @greeting.message_for_fr("France")
        @japan_reader = @greeting.message_for_fr("Japan")
        @england_reader = @greeting.message_for_fr("England")
        @germany_reader = @greeting.message_for_fr("Germany")
        @brazil_reader = @greeting.message_for_fr("Brazil")

        assert_equal @france_reader, "Welcome to Ruby Fundamentals, this is a reader from France."
        assert_equal @japan_reader, "Welcome to Ruby Fundamentals, this is a reader from Japan."
        assert_equal @england_reader, "Welcome to Ruby Fundamentals, this is a reader from England."
        assert_equal @germany_reader, "Welcome to Ruby Fundamentals, this is a reader from Germany."
        assert_equal @brazil_reader, "Welcome to Ruby Fundamentals, this is a reader from Brazil."
    end  

    def test_output_results
        output = `ruby ./Exercise10.04.rb`
        assert_match /France/, output
        assert_match /Japan/, output
        assert_match /England/, output
        assert_match /Germany/, output
        assert_match /Brazil/, output
        assert_match /Welcome to Ruby Fundamentals, this is a reader from/, output
    end
end