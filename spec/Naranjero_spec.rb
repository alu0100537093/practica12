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
	
	
end