require "minitest/autorun"
require 'net/http'
require 'webmock/minitest'

class Excercise < Minitest::Test
    def setup
        stub_request(:get, "https://www.packtpub.com")
        @uri = URI.parse('https://www.packtpub.com')
    end

    def test_get_request
        get_request = Net::HTTP.get_response(@uri)
        assert_equal "200", get_request.code
    end

    def test_output
        output = `ruby ./Exercise10.05.rb`
        assert_match /200/, output
    end
end