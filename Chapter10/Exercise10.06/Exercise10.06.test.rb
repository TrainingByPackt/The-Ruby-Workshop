require "minitest/autorun"
require 'httparty'
require 'webmock/minitest'


class Excercise < Minitest::Test
    def setup
        stub_request(:post, "https://www.packtpub.com")
        @uri = URI.parse('https://www.packtpub.com')

    end

    def test_get_request
        get_request = HTTParty.post(@uri)
        assert_equal 200, get_request.code
    end

    def test_output
        output = `ruby ./Exercise10.06.rb`
        assert_match /Ruby Fundamentals/, output
    end
end