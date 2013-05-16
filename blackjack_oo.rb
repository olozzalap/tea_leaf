class cards
	@@deck = [2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 'a', 'a', 'a', 'a']

  def hit
    @@deck.shuffle!

    if @@deck[0] == 'a'
		aces += 1
	elsif @@deck[0] != 'a'
		non_aces += @@deck[0]
	end
	@@deck.delete_at(0)
  end

  def start
    hit
	hit
  end

end

class dealer < cards
	attr_accessor: non_aces
	attr_accessor: aces
	attr_accessor: ideal
	attr_accessor: hand

	def initialize
		@non_aces = 0
		@aces = 0
		@hand = 0
		@name = "The Dealer"
		@ideal = 0
	end


  
  def ideal_hand
    if non_aces + aces > 21
	  bust
	elsif aces == 0
	  non_aces
	elsif non_aces <= 10 && aces == 1
	  non_aces + 11
	elsif non_aces <= 9 && aces == 2
	  non_aces + 11 + 1
  	elsif non_aces <= 8 && aces == 3
	  non_aces + 11 + 1 + 1
  	elsif non_aces <= 7 && aces == 4
	  non_aces + 11 + 1 + 1 + 1
	elsif non_aces > 10
	  non_aces + aces
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
	
	def check_hand
	  puts "You have #{non_aces} and #{aces} aces"
	  if non_aces + aces > 21
	    bust
	  elsif aces == 0
	    non_aces
	  elsif non_aces <= 10 && aces == 1
	    non_aces + 11
	  elsif non_aces <= 9 && aces == 2
	    non_aces + 11 + 1
      elsif non_aces <= 8 && aces == 3
	    non_aces + 11 + 1 + 1
      elsif non_aces <= 7 && aces == 4
	    non_aces + 11 + 1 + 1 + 1
	  elsif non_aces > 10
	    non_aces + aces
	  end
	end
  
  @lowest = non_aces + aces
  @highest = non_aces + (aces * 11)
  puts "You have #{hand} and #{aces} aces."
  if aces == 0
  	hand = @lowest
  	print "Total value is #{hand}"

end