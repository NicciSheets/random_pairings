names = "Nicci", "Jordan", "Justin", "Scott", "Josh", "BillyJack", "Jeremy"


def true_value(names) #shows that an array of 2 returns as true, will use that info to run a loop that stops once returns true (until)
	if names.shuffle.sample(2).length % 2 == 0
		true
	else 
		false
	end
end

puts true_value(names)



def pairings(names)
	newarr = names.shuffle
	pairs = newarr.each_slice(2).to_a
	puts pairs.length
	if names.length % 2 == 0 
		pairs
	else names.length % 2 != 0
		pairs[-2].concat(pairs[-1]).flatten #this is how you call on the last 2 paired arrays, then you append them and flatten them so they're contained in 1 array
		pairs.pop(1) #you have to do this to get rid of the double name you return when you call [-1] and [-2]
	end
	pairs
end

p pairings(names)

