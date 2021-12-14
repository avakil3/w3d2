require_relative "card.rb"

class Board
# VARIABLES:
	# creating a board:
		# what size should it be?
		# what should it be filled with?

# METHODS:
	# populate:
		# should fill the board with PAIRS of Card.new - hidden
	# render:
		# HUD to display board's current state
	# won?:
		# return true if all cards are Card.reveal'ed
	# guessed_pos:	
		# should take a position
		# reveal the pos if is_visible = false
		# return the face_value of the card
	
	# reveal:
		# if the card is not_visible... 
			# should Card.reveal at a position
			# should turn the pos of card to show face_value
	
	def initialize(n)
		@size = n
		@board = Array.new(n) { Array.new(n) }
		
	end
	
end

