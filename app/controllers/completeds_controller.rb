class CompletedsController < ApplicationController
	
	def play

		animal = Animal.find(params[:animals].first)
		puts animal.eats(params[:animals])
		# buscar el modelo del primer animal
		# llamar al metodo eats? con id del segundo
		# si true, continuo si hay mas, sino exito, sino, da error


		# if self.productorFirstDescomponedorLast(arr)
		# 	return false
		# else 
		# 	self.gameMech(arr)
		# 	self.checkTheResult(arr)
		# end
	end

	# método productorFirstDescomponedorLast(array)
	def self.productorFirstDescomponedorLast(arr)
		(arr[0].type != "productor" || 
		arr[arr.length - 1].type != "descomponedor")?
		true : false
	end

	# método gameMech(array)
	def self.gameMech(arr)
		@result = 0
		arr.each_with_index do |anim, index|
			case anim.type
				when "herbivoro1"
					self.checkIfEats(arr, index, ["carnivoro1", 
						"carnivoro2", "carnivoro3", "descomponedor"])
				
				when "herbivoro2"
					self.checkIfEats(arr, index, ["carnivoro2", 
						"carnivoro3", "descomponedor"])
				
				when "herbivoro3"
					self.checkIfEats(arr, index, ["carnivoro3", 
						"descomponedor"])
				
				when "carnivoro1"
					self.checkIfEats(arr, index, ["descomponedor", 
						"carnivoro2", "carnivoro3", "carroñero"])
				
				when "carnivoro2"
					self.checkIfEats(arr, index, ["descomponedor", 
						"carnivoro3", "carroñero"])
				
				when "carnivoro3"
					self.checkIfEats(arr, index, ["descomponedor", 
						"carroñero"]) 
				
				when "productor"
					self.checkIfEats(arr, index, ["herbivoro1", 
						"herbivoro2", "herbivoro3"])
				
				else
					@result += 0
			end
		end
	end

	# método checkIfEats(arr, ind, type)
	def self.checkIfEats(arr, ind, check)
		check.each do |checktype|
			if (arr[ind + 1].type == checktype)
				then @result += 1
			else 
				@result += 0
			end
		end
	end

	# método checkTheResult(animalArr)
	def self.checkTheResult(arr)
		if (@result == arr.length - 1)
			return true
		else
			return false
		end
	end	

end
