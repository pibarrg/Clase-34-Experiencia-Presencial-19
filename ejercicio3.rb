# Se tiene la clase Vehicle que recibe como argumento un modelo y un año. El método engine_start enciende el vehículo.

class Vehicle
  attr_reader :model, :year, :start
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end

class Car < Vehicle
  @@contador = 0

  def initialize(model, year)
    super
    @@contador += 1
  end

  def engine_start
    super
    print 'El motor se ha encendido!'
  end

  def self.contador_instancias
    @@contador
  end

end

auto1 = Car.new('Honda', 2018)
auto2 = Car.new('Toyota', 2017)
puts Car.contador_instancias #cuento el número de instancias

puts auto1.engine_start

# print "el auto 1 es #{auto1.model} del año #{auto1.year}"

11.times do |i|
  car = Car.new("nombre#{i}", "20#{i}")
  puts "#{car.model} #{car.year}"
end
puts Car.contador_instancias #cuento el número de instancias
