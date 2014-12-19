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
end
