require_relative "card.rb"
require "byebug"
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
		raise "Invalid size: size must be an even number" if n.odd?
		@size = n
		@board = Array.new(n) { Array.new(n, "") }
	end

	def populate
		total_pairs = (@size ** 2) / 2
		current_pairs = 0
		while current_pairs < total_pairs
			card = Card.new 
			num_of_pairs_assigned=0
			while num_of_pairs_assigned < 2
				rand_row = rand(0...@size)
				rand_col = rand(0...@size)
				pos = [rand_row, rand_col]
				if self[pos].is_a?(String)
					self[pos] = card
					num_of_pairs_assigned +=1
				end
			end
			current_pairs+=1
		end
	end
	
	def [](pos)
		row,col = pos 
		@board[row][col]
	end

	def []=(pos,value)
		row,col = pos 
		@board[row][col] = value
	end

	def render
		@board.each do |row|
			row.each do |ele|
				if ele.visible?
					print ele.face_value + " "
				else
					print "_ "
				end
			end
			puts
		end
	end

	def set_all_visible
		@board.each do |row|
			row.each do |ele|
				ele.reveal
			end 
		end
	end
	def won?
		@board.all? do |row|
			row.all? do |ele|
				ele.visible?
			end
		end
	end

	# should take a position
	# reveal the pos if is_visible = false
	# return the face_value of the card
	def reveal(pos)
		if !self[pos].visible?
			self.reveal
			return self.face_value
		end
	end

end


