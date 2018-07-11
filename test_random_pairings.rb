require "minitest/autorun"
require_relative "random_pairings.rb"

class TestRandomPairings < Minitest::Test 

	def test_assert_returns_as_array_randomarray_and_length
		names = "Nicci", "Jordan", "Justin", "Scott", "Josh"
		assert_equal(Array, my_peeps(names).class)
		refute_equal(names, my_peeps(names))
		assert_equal(5, my_peeps(names).length)
	end


	
end
