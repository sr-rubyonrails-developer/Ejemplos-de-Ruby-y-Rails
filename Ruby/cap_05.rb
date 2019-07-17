#CAPÍTULO 5: UTILIZANDO OBJETOS EN RUBY

adena = String.new
array = Array.new
aleatorio = Random.new


hola = String.new("hola")
puts hola # => "hola"


"Objeto String sin operador new"
["soy", "un", "arreglo", "sin", "new"]
20 #objeto de la clase Integer
50.3 #objeto de la clase Float


a = 54
a.next # => 55


54.next # => 55


"hola mundo".upcase # => "HOLA MUNDO"


a = "Hola mundo"
b = a.upcase
puts b # => "HOLA MUNDO"
puts a # => "Hola mundo"


a = "Hola mundo"
a.upcase!
puts a # => "HOLA MUNDO"


"hola mundo".eql? "hola mundo" #=> true


"hola mundo".eql?("hola mundo") #=> true


"abcd".insert(4, 'X') #=> "abcdX"


system("pause")
