#CAPÍTULO 7: LOS NÚMEROS

numero_entero = 44
puts numero_entero.class # => Integer


numero_flotante = 1.68
puts numero_flotante.class # => Float


entero_negativo = -68
puts entero_negativo.class # => Integer


puts 12_345_628_895_234 # => 12345628895234


0b101 # 5
0b1000 # 8
0b1111110 # 126


0o1234567 # 342391
0o127 # 87
0272 # 186


# Color rojo
0xFF0000 # 16711680
# Color verde
0x00FF00 # 65280
# Color azul
0x0000FF # 255


_23, _32 = 23, 32   
#_23 es impar
puts _23.odd? # => true
puts _23.even? # => false   
#_32 es par
puts _32.odd? # => false
puts _32.even? # => true


numero = 99
 
puts numero.next # => 100
puts numero.pred # => 98


#El número 1001 en binario es igual a 9 en decimal
numero_binario = 0b1001
 
puts numero_binario.odd? # => true
puts numero_binario.next # => 10


numero = 99
numero.next.even? #=> true


flotante_decima = 0.0
puts flotante_decima.class # => Float
 
flotante_millonesima = 4.672195
puts flotante_millonesima.class # => Float
 
notacion_cientifica = 2.5e45
puts notacion_cientifica.class # => Float


puts 23.5667.truncate(2) # => 23.56
puts 23.5667.truncate(1) # => 23.5


puts 3.273.round(2) # => 3.27


puts 3.276.round(2) # => 3.28


puts 9.99999999999.round(6) # => 10.0


puts 9999.99.round # => 10000


cantidad = -1
 
puts cantidad.positive? # => false
puts cantidad.zero? # => false
puts cantidad.negative? # => true


valor = -10.50
puts valor.abs # => 10.5


# Suma
puts 10 + 2 # => 12
# Resta
puts 10 - 2 # => 8


# Multiplicación
puts 3 * 3 # => 9
# División
puts 12 / 6 # => 2


division_entera = 12 / 5
puts division_entera # => 2


residuo_division = 12 % 5
puts residuo_division # => 2


division_real = 12 / 5.0
puts division_real # => 2.4


# Exponenciación
puts 3 ** 3 # => 27


puts 2 ** 5 # => 32


# Suma
puts 2.+(5) # => 7


primera_expresion = 3 + 2 ** 2 * 4  
puts primera_expresion # => 19


segunda_expresion = 3 + 2 ** (2 * 4)
puts segunda_expresion # => 259


tercera_expresion = (3 + 2) ** (2 * 4)
puts tercera_expresion # => 390625


cuarta_expresion = ((3 + 2) ** 2) * 4
puts cuarta_expresion # => 100


num1 = 7
num2 = 8
 
puts num1 < num2 # ¿7 es menor que 8?
# => true
puts num1 > num2 # ¿7 es mayor que 8?
# => false
puts num1 <= num2 # ¿7 es menor o igual que 8?
# => true
puts num1 >= num2 # ¿7 es mayor o igual que 8?
# => false
puts num1 == num2 # ¿7 es igual que 8?
# => false
puts num1 != num2 # ¿7 es diferente que 8?
# => true


puts 3.33 < 3.34 # => true


puts 1 == 1.0 # => true


random = Random.new


numero_entero_aleatorio = random.rand(10) 


numero_flotante_aleatorio = random.rand(5.5)
puts numero_flotante_aleatorio
# Una posibilidad: 2.9708838864866918


(10..20)
(10...20)


numero_aleatorio = random.rand(10...20) #No incluye 20


numero_aleatorio = random.rand(10..20) #Puede incluir 20


(-1..-5)
(-5..-1)
('a'..'e')
('a'...'e') 


rango = (100..200)
   
puts rango.begin # => 100
puts rango.first # => 100
puts rango.min # => 100


puts rango.end # => 200
puts rango.last # => 200
puts rango.max # => 200

otro_rango = (100...200)
puts otro_rango.max # => 199


p (-5..5).first(3) # => [-5, -4, -3]


puts (56..85).size # => 30


puts (70..100) === 80 # => true


system("pause")