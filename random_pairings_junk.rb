names = "Nicci", "Jordan", "Justin", "Scott", "Josh"

def my_peeps(names)
	names.shuffle
end



puts my_peeps(names)

def nested_arr_my_peeps(names)
	my_peeps(names).each_slice(2) { |name| p name }
		 

end

puts nested_arr_my_peeps(names)