class LevelsController < ApplicationController
	def level1
		@level1 = Level.find_by(name: "level1").animals
	end

	def level2
		@level2 = Level.find_by(name: "level2").animals
	end

	def level3
		@level3 = Level.find_by(name: "level3").animals
	end

	def level4
		@level4 = Level.find_by(name: "level4").animals
	end

end
