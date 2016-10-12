
# Collections Examples
classmates = ["Pepe","Juan","Felipe"]
puts classmates

# Metodo each: recorre una coleccion
classmates.each do |classmate| 
	puts "Good Morning #{classmate}"
end

# comportamiento del metodo map
added_one =[]
[1,2,3].each do |item|
	added_one.push(item+1)
end
puts added_one

# El método map genera un nuevo array con el resultado de la operacion
added_one = [1,2,3].map do |item|
	item+1
end
puts added_one

# En este ejemplo map genera un nuevo array con las ciudades en mayuscula
cities = ["miami","madrid","barcelona"]
pretty_cities = cities.map { |city| city.capitalize }
puts pretty_cities 

# mismo ejemplo con otra notacion
cities = ["miami","madrid","barcelona"]
pretty_cities = cities.map do |city| 
	city.capitalize 
end
puts pretty_cities 

# El metodo reduce genera un unico resultado a partir de un array
# En el ejemplo suma todos los numeros del array
total = [1,4,10].reduce do |sum,number|
	sum+number
end
puts total

# mismo ejemplo con notacion abreviada
puts total = [1,4,10].reduce { |sum,number| sum+number }

# otros ejemplos del metodo reduce
puts [1].reduce { |sum,x| sum+x}
puts [].reduce { |sum,x| sum+x}
puts [1,2,3].reduce { |sum,x| sum+x}

# se puede inicializar la variable sum, en este ejemplo con 0
puts [1,2,3].reduce(0) { |sum,x| sum+x}

# Calculo de la longitud media de las ciudades del array
cities = ["miami","madrid","barcelona"]
total = cities.reduce(0.0) do |sum, city| 
	sum = sum + city.length
end
puts total / cities.length

# Comportamiento del metodo each_with_index
i=0
["a","b","c"].each do |number|
	puts "[#{i}] #{number}"
	i += 1
end

# mismo ejemplo con el metodo each_with_index
["a","b","c"].each_with_index { |x,index| puts "[#{index}] #{x}"}

# metodo selec devuelve un array con el resultado de las operaciones parecido a map
oddNumbers = []
oddNumbers = ["5","2","3"].select { |x| x.to_i.odd? }
puts oddNumbers

# El metodo grep busca una subcadena, devuelve un array con los elementos que cumplen la condicion
words = []
words = ["casa","masa","pepito"].grep(/as/)
puts words

# el metodo find busca hasta que encuentra, devuelve el primero
oddNumbers = []
oddNumbers = ["5","2","3"].find { |x| x.to_i.odd? }
puts oddNumbers

# el metodo sort, ordena
puts ["5","2","3"].sort

# recorremos un array
for number in 0..100
  puts number
end

# FICHEROS: solicitamos el nombre del fichero fuente
puts "What is the source file?"
ficheroOrigen = gets.chomp
# recuperamos el contenido del fichero origen
contenido = IO.read(ficheroOrigen)
# solicitamos fichero destino
puts "What is the destination file?"
ficheroDestino = gets.chomp
# escribimos el contenido en el fichero destino
IO.write(ficheroDestino, contenido)
