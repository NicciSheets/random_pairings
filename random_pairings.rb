#names = "Nicci", "Jordan", "Justin", "Scott", "Josh", "BillyJack", "Jeremy"

def true_value(names) #shows that an array of 2 returns as true
	if names.shuffle.sample(2).length % 2 == 0
		true
	else 
		false
	end
end

def name_arr(names)
	names.shuffle
end 

def name_arr_paired(names)
	name_arr(names).each_slice(2).to_a
end

# p true_value(names)

def pairings(names)
	pairs = name_arr_paired(names)
	if names.length % 2 == 0 
		pairs
	else 
		pairs[-2].concat(pairs[-1]).flatten #this is how you call on the last 2 paired arrays, then you append them and flatten them so they're contained in 1 array
		pairs.pop(1) #you have to do this to get rid of the double name you return when you call [-1] and [-2]
	end
	pairs
end


#names = "Nicci", "Jordan", "Justin", "Scott", "Josh", "BillyJack", "Jeremy"
#names = "Nicci", "Jordan", "Justin", "Scott", "Josh", "BillyJack"
#p pairings(names)
