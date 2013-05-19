hand = [['K', 'D'], ['A', 'S'], [8, 'C']]
value = 0
aces = 0

for i in 0...hand.count
	  if hand[i][0] == 'K' || hand[i][0] == 'J' || hand[i][0] == 'Q'
	    value += 10
		puts value
	  elsif hand[i][0] == 'A'
	    aces += 1
		value += 1
		puts value
	  else
        value += hand[i][0]
		puts value
	  end
	
end
	
	puts value
	puts aces
	
	print "\n \n \n"
	 print hand[0][0]