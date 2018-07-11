require "minitest/autorun"
require_relative "random_pairings.rb"

class TestRandomPairings < Minitest::Test 

	def test_assert_returns_as_array_randomarray_and_length
		names = "Nicci", "Jordan", "Justin", "Scott", "Josh", "BillyJack", "Jeremy"
		assert_equal(Array, name_arr(names).class)
		refute_equal(names, name_arr(names))
		assert_equal(7, name_arr(names).length)
	end
	#test for the length of the multidimensional arrays
	def test_assert_returns_as_paired_multidimensional_array
		names = "Nicci", "Jordan", "Justin", "Scott", "Josh", "BillyJack", "Jeremy"
		assert_equal(4, name_arr_paired(names).length)
		assert_equal(Array, name_arr_paired(names).class)
		refute_equal(names, name_arr_paired(names))
	end

	def test_assert_length_of_each_inner_array_when_2_returns_true
		names = "Nicci", "Jordan", "Justin", "Scott", "Josh", "BillyJack", "Jeremy"
		assert_equal(true, true_value(names))
	end

	def test_assert_paired_multidimensional_array_appends_odd_number_array_to_even_paired_array
		names = "Nicci", "Jordan", "Justin", "Scott", "Josh", "BillyJack", "Jeremy"
		assert_equal(3, pairings(names).length)
		refute_equal(names, pairings(names))
	end

end
