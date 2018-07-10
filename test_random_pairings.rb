require "minitest/autorun"
require_relative "random_pairings.rb"

class TestRandomPairings < Minitest::Test 

	def test_assert_returns_as_string
		names = "Nicci" "Justin" "Scott" "BillyJack" "Jordan"
		assert_equal(true, my_peeps(names))
	end
	
end

