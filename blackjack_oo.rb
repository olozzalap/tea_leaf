class Cards
  attr_accessor :cards
  
  @@card_faces = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
  @@card_suits = ['H', 'D', 'C', 'S']
  
  def initialize (decks=1)
	@cards = []
	decks.to_i.times do |deck|
	  @@card_suits.each do |suit|
	    @@card_faces.each do |face|
	      @cards << [face, suit]
		end
	  end
	end
	@cards.shuffle!
  end

  def hit
    hand << cards.pop
  end

  def start
    hit
	hit
  end
  
  def cards_showing
    hand[1..10]
  end

end

class Dealer < Cards
	attr_accessor: ideal
	attr_accessor: hand

	def initialize
		@hand = []
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

class Player < Cards
	attr_accessor: hand

	def initialize
		@hand = []
		puts "What is your name hotshot?"
		print "> "
		@name = gets.chomp
	end
	
	def check_hand
	end

end