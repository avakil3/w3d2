class Card
	attr_reader :face_value, :face_up
	def initalize
		@face_value = ("A".."Z").to_a.sample
		@is_visible = false
	end

	def hide
		@is_visible = false
	end

	def reveal
		return @face_value if @is_visible == true
	end

end