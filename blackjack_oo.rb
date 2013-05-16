class cards
	@@deck = [2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 'a', 'a', 'a', 'a']


end

class dealer < cards
	attr_accessor: non_aces
	attr_accessor: aces
	attr_accessor: hand

	def initialize
		@non_aces = 0
		@aces = 0
		@hand = 0
		@name = "The Dealer"
	end

	def start
		@@deck.shuffle!

		if @@deck[0] == 'a'
			aces += 1
		elsif @@deck[1] == 'a'
			aces += 1
		end

		if @@deck[0] != 'a'
			non_aces += @@deck[0]
		elsif @@deck[1]
			non_aces += @@deck[1]
		end
			@@deck.delete_at(0)
			@@deck.delete_at(1)	
	end

  def hit
    @@deck.shuffle!

    if @@deck[0] == 'a'
			aces += 1
		elsif @@deck[0] != 'a'
			non_aces += @@deck[0]
		end
		@@deck.delete_at(0)
  end

  if hand < 17
  	hit
  else
  	hand
  end

end

class player < cards
	attr_accessor: non_aces
	attr_accessor: aces
	attr_accessor: hand

	def initialize
		@non_aces = 0
		@aces = 0
		@hand = 0
		puts "What is your name hotshot?"
		print "> "
		@name = gets.chomp
	end

	def start
		@@deck.shuffle!

		if @@deck[0] == 'a'
			aces += 1
		elsif @@deck[1] == 'a'
			aces += 1
		end

		if @@deck[0] != 'a'
			non_aces += @@deck[0]
		elsif @@deck[1]
			non_aces += @@deck[1]
		end
			@@deck.delete_at(0)
			@@deck.delete_at(1)	
	end

  def hit
    @@deck.shuffle!

    if @@deck[0] == 'a'
			aces += 1
		elsif @@deck[0] != 'a'
			non_aces += @@deck[0]
		end
		@@deck.delete_at(0)
  end
  
  @lowest = non_aces + aces
  @highest = non_aces + (aces * 11)
  puts "You have #{hand} and #{aces} aces."
  if aces == 0
  	hand = @lowest
  	print "Total value is #{hand}"

end