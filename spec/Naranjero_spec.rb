#!/usr/bin/env ruby
# encoding: utf-8

require "naranjero.rb"

describe Naranjo do
	before :all do
		@naranjero = Naranjo.new(0.2,5,2)
		@naranjero2 = Naranjo.new(0.3,6,3)
	end

	it "El naranjero recibe el incremento correcto de tamaño anual" do
		expect(@naranjero.aumento_altura).to eq(0.2)
		expect(@naranjero2.aumento_altura).to eq(0.3)
	end

	it "El naranjero recibe correctamente la edad a la que empieza a producir" do
		expect(@naranjero.comienzo_produccion).to eq(5)
		expect(@naranjero2.comienzo_produccion).to eq(6)
	end

	it "Se inicializa correctamente el número de naranjas" do
		expect(@naranjero.n_naranjas).to eq(0)
		expect(@naranjero2.n_naranjas).to eq(0)
	end

	it "Se inicializan correctamente la edad" do
		expect(@naranjero.edad).to eq(0)
		expect(@naranjero2.edad).to eq(0)
	end

	it "Se inicializan correctamente la altura" do
		expect(@naranjero.altura).to eq(0)
		expect(@naranjero2.altura).to eq(0)
	end
	
	it "Se inicializa correctamente la frecuencia de crecimiento" do
		expect(@naranjero.frecuencia_crecimiento).to eq(2)
		expect(@naranjero2.frecuencia_crecimiento).to eq(3)
	end
	
	it "Se comprueba si el arbol sigue vivo o no" do
		expect(@naranjero.esta_muerto).to eq(false)
		expect(@naranjero2.esta_muerto).to eq(false)
		@naranjero.edad = 70
		expect(@naranjero.esta_muerto).to eq(true)
		@naranjero.edad = 0
	end

	it "Se comprueba que el naranjero produce naranjas" do
		expect(@naranjero.produce).to eq(false)
		expect(@naranjero2.produce).to eq(false)
	end

	it "Se comprueba que se incrementa correctamente la edad de un naranjo " do
		5.times do
			@naranjero.uno_mas
		end
		expect(@naranjero.altura).to eq(1.0)
		expect(@naranjero.n_naranjas).to eq(5)
		expect(@naranjero.edad).to eq(5)
	end

	it "Se debe devolver una cadena indicando si se ha recogido una naranja o no" do
		expect(@naranjero.recolectar_una).to eq("La naranja estaba delicosa")
		expect(@naranjero2.recolectar_una).to eq("Una pena... no hay naranjas.")
	end
	
end


describe Recolector do
	before :all do
		@naranjo = Naranjo.new(0.2,5,3)
		@recolector = Recolector.new(2,@naranjo)
	end

	it"El recolector tiene una frecuencia de recogida" do
		expect(@recolector.frecuencia_de_recogida).to eq(2)
	end

	it "El recolector debe poseer un naranjero" do
		expect(@recolector.naranjero).to eq(@naranjo)
	end
	
	it "El recolector puede recolectar una naranja" do
		expect(@recolector.recolectar).to eq("Una pena... no hay naranjas.")
	end
=begin
	it "Simulaciooooooon" do
		puts "Empezando sumulación!!"
		@recolector.simular_recoleccion
	end
=end
end