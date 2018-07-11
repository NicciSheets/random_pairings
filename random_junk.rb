names = "Nicci", "Jordan", "Justin", "Scott", "Josh"

def my_peeps(names)
	names
end

#paired_array = names.shuffle.each_slice(2).to_a

#p paired_array

def pairings(names)
	newarr = names.shuffle
	pairs = newarr.each_slice(2).to_a
	if pairs.length % 2 == 0
		paired_arr = new_arr 
	else
		paired_arr = newarr.each_slice(3).to_a
	end
	paired_arr
end

p pairings(names)

