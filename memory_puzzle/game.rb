require_relative "board.rb"
require_relative "card.rb"

class Game
	# VARIABLES:
		# board: should initialize a new board
		# prev_guess: previously-guessed position (if any)

	# METHODS:

		
		# prompt: should ask for a player's guess using gets.chomp.to_i
		# make_guess: Board.guess_pos 
		# game_over: when the game is over
		
		# play: loops the game, until over
			# @board.render the current board
			# prompt the user for make_guess #1
				# reveal card with make_guess
			# prompt the user for make_guess #2
				# reveal card with make_guess
			# if both guesses == Card.face_value...
				# "its a match!"
			# else
				# "try again"
			# if Board.won?
				# game_over
			