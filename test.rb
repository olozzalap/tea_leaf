  
  

  
  def initialize (decks=1)
    @@card_faces = [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 'a']
  @@card_suits = ['H', 'D', 'C', 'S']
	@cards = []
	decks.to_i.times do |deck|
	  @@card_suits.each do |suit|
	    @@card_faces.each do |face|
	      @cards << [face, suit]
		end
	  end
	end
	@cards.shuffle!
	print @cards.count
  end
  
  initialize(15)