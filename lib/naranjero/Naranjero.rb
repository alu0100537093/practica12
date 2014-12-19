class Naranjo

	TIEMPO_DE_VIDA = 40           #Tiempo de vida de un naranjero
	INCREMENTO_NARANJAS = 5  # Número de naranjas que se incrementan por año una vez empiece a producir
 
	attr_accessor :edad, :altura, :aumento_altura, :n_naranjas, :comienzo_produccion, :frecuencia_crecimiento

	def initialize(aumento_altura_anyo, empezar_producir, frecuencia_crecimiento )
		@aumento_altura = aumento_altura_anyo		 #La cantidad de m que aumenta cada año el árbol.
		@edad = 0					 #Edad del naranjero
		@altura = 0.0					 #Altura del naranjero
		@n_naranjas = 0					 #Número de naranjas
		@comienzo_produccion = empezar_producir          #A que edad empieza a producir naranjas
		@frecuencia_crecimiento = frecuencia_crecimiento #Cada cuantos segundos crece el arbol (en el hilo de ejecucion)
	end

	def esta_muerto
		if(@edad >= TIEMPO_DE_VIDA)
			return true
		else
			return false
		end
	end

	def produce
		if(@edad >= @comienzo_produccion)
			return true
		else
			return false
		end
	end

	def uno_mas
		sleep(@frecuencia_crecimiento)
		puts "El naranjo ha cumplido #{@edad +1} años"
		if(!esta_muerto)
			@edad = @edad + 1
			@altura = @altura + @aumento_altura
			if(produce)
				@n_naranjas = @n_naranjas + INCREMENTO_NARANJAS*(@edad - @comienzo_produccion +1)
			end
		end
	end

	def recolectar_una
		if(!esta_muerto)
			if(n_naranjas > 0)
				@n_naranjas = @n_naranjas -1
				return "La naranja estaba delicosa"
			else
				return "Una pena... no hay naranjas."
			end
		else
			return "Ya no se puede hacer nada más, el naranjo ha muerto"
		end
	end
end
