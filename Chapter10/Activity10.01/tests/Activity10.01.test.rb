require "minitest/autorun"
require 'httparty'
require 'webmock/minitest'

class Excercise < Minitest::Test
    def setup
        @get_url = 'https://www.akshatpaul.com/ruby-fundamentals/list-all-buildings'
        @post_url = "https://www.akshatpaul.com/ruby-fundamentals/buildings"
        stub_request(:get, @get_url)
        stub_request(:post, @post_url)
    end

    def test_get_request
        get_request = HTTParty.get(@get_url)
        assert_equal 200, get_request.code
    end

    def test_post_request
        post_request = HTTParty.post(@post_url, body: { property: {name: "Mr. Ruby Noobie", address: "Tokyo" }})
        assert_equal 200, post_request.code
    end

end
