class Player
attr_accessor :blood, :manna, :name
	def initialize (name)
		@blood=100
		@manna=40
		@name=name
	end

	def serang
		@manna= @manna - 20
	end

	def diserang
		@blood=@blood-20
	end

	

end