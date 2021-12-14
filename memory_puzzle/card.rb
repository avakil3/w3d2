class Card
# VARIABLES:
# create a card with a letter
# is_visible: is it face-up or face down?

# METHODS:
	# hide: is_visible => false
	# reveal: is_visible => true
	# to_s access to face_value.to_s for puts on board
	# ==

	attr_reader :face_value, :face_up

	def initialize
		@face_value = ("A".."Z").to_a.sample
		@is_visible = false
	end

	def visible?
		@is_visible
	end

	def hide
		@is_visible = false
	end

	def reveal
		@is_visible = true
	end

	def ==(other_card)
		self.face_value == other_card.face_value
	end

	def to_s
		if @is_visible == true
			self.face_value
		else
			" "
		end
	end
end