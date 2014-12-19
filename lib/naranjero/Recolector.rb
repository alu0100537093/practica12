class Recolector
	attr_accessor :frecuencia_de_recogida, :naranjero
	def initialize(frecuencia_de_recogida, naranjero)
		@frecuencia_de_recogida = frecuencia_de_recogida
		@naranjero = naranjero
		@seguir_trabajando = true # Mientras el naranjero este vivo, el recolector seguira intentando recoger mas naranjas
	end

	def recolectar
		sleep(@frecuencia_de_recogida)
		cadena = @naranjero.recolectar_una
		puts cadena
		if (cadena == "Ya no se puede hacer nada más, el naranjo ha muerto")
			@seguir_trabajando = false
		end
		cadena
	end

	def simular_recoleccion
		hilo1 = Thread.new{while(!@naranjero.esta_muerto) do @naranjero.uno_mas end}
		hilo2 = Thread.new{while (@seguir_trabajando == true) do self.recolectar end}
		hilo1.join
		hilo2.join
	end
end
