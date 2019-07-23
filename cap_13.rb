# CAPÍTULO 13: REPETICIONES

for value in(1..5) do
  print "¡Hola, mundo!"
end
# => ¡Hola, mundo!¡Hola, mundo!¡Hola, mundo!¡Hola, mundo!¡Hola, mundo!

print "¡Hola, mundo!", "¡Hola, mundo!", "¡Hola, mundo!", "¡Hola, mundo!", "¡Hola, mundo!"
# => ¡Hola, mundo!¡Hola, mundo!¡Hola, mundo!¡Hola, mundo!¡Hola, mundo!


for value in(1..5)
  puts "Valor: #{value}"
end
# SALIDA:
# 1
# 2
# 3
# 4
# 5


dias_semana = ["domingo", "lunes", "martes", "miércoles", "jueves", "viernes", "sábado"]
 
for value in(dias_semana)
  puts value
end
# Salida:
# domingo
# lunes
# martes
# miércoles
# jueves
# viernes
# sábado


indice = 0
for value in(dias_semana)
  puts "Elemento: #{value} - Posición: #{indice}"
  indice += 1
end
# SALIDA:
# Elemento: domingo - Posición: 0
# Elemento: lunes - Posición: 1
# Elemento: martes - Posición: 2
# Elemento: miércoles - Posición: 3
# Elemento: jueves - Posición: 4
# Elemento: viernes - Posición: 5
# Elemento: sábado - Posición: 6


i = 1
while i <= 3
  puts"Repeticción \##{i}"
  i += 1
end
# SALIDA:
# Repeticción #1
# Repeticción #2
# Repeticción #3


personas = ["Santiago", "Juan", "Michell", "Carlos", "Javier", "Daniel"]
until personas.empty?
  puts "Eliminé a #{personas.pop}"
end
# SALIDA:
# Eliminé a Daniel
# Eliminé a Javier
# Eliminé a Carlos
# Eliminé a Michell
# Eliminé a Juan
# Eliminé a Santiago


while true
  puts "No pienso parar"
end


tabla_multiplicar = 3
i = 1
while  i < 10
  puts "#{tabla_multiplicar} * #{i} = #{tabla_multiplicar * i}"
end


tabla_multiplicar = 3
i = 1
while  i  > 10
  puts "#{tabla_multiplicar} * #{i} = #{tabla_multiplicar * i}"
  i += 1
end


tabla_multiplicar = 3
i = 1
while  i < 10
  puts "#{tabla_multiplicar} * #{i} = #{tabla_multiplicar * i}"
  i += 1
end
# SALIDA:
# 3 * 1 = 3
# 3 * 2 = 6
# 3 * 3 = 9
# 3 * 4 = 12
# 3 * 5 = 15
# 3 * 6 = 18
# 3 * 7 = 21
# 3 * 8 = 24


tabla_multiplicar = 3
i = 1
while  i <= 10
  puts "#{tabla_multiplicar} * #{i} = #{tabla_multiplicar * i}"
  i += 1
end
# SALIDA:
# 3 * 1 = 3
# 3 * 2 = 6
# 3 * 3 = 9
# 3 * 4 = 12
# 3 * 5 = 15
# 3 * 6 = 18
# 3 * 7 = 21
# 3 * 8 = 24
# 3 * 9 = 27
# 3 * 10 = 30


var = 0
# Intrucciones...
var += 1 while var < 10


var = 0
# Intrucciones...
var += 1 until var > 10


numero_aleatorio = Random.new
begin
  primer_numero = numero_aleatorio.rand(1..10)
  segundo_numero = numero_aleatorio.rand(1..10)
  resultado = primer_numero + segundo_numero
  puts "¿Cuanto es la suma de #{primer_numero} + #{segundo_numero}?"
  respuesta = gets.to_i
  mensaje = respuesta  == resultado ? "¡Correcto!" : "¡Incorrecto!"
  puts mensaje
end while resultado != respuesta
# EJEMPLO DE SALIDA:
# ¿Cuanto es la suma de 7 + 8?
# 9
# ¡Incorrecto!
# ¿Cuanto es la suma de 4 + 1?
# 6
# ¡Incorrecto!
# ¿Cuanto es la suma de 5 + 7?
# 15
# ¡Incorrecto!
# ¿Cuanto es la suma de 3 + 6?
# 9
# ¡Correcto!


puts "¿Cuál es el número que estoy pensando?"
r = Random.new
numero = r.rand(1..10)
begin
  numero_propuesto = gets.chomp.to_i
  mensaje = numero == numero_propuesto ? "¡Correcto!" : "No, ese no es el número. Intentalo de nuevo."
  puts mensaje
end while numero != numero_propuesto


email = "fulanito@gmail.com"
puts "Email: #{email}"
begin
  puts "Confirma porfavor el email"
  confirmacion_email = gets.chomp
  validacion = if email == confirmacion_email  
    "El email es el mismo"
  else
    "El email es diferente"
  end
  puts validacion
end until email == confirmacion_email
# EJEMPLO DE SALIDA:
# Email: fulanito@gmail.com
# Confirma porfavor el email
# fulanito@hotmail.com
# El email es diferente
# Confirma porfavor el email
# fulanito@gmail.com
# El email es el mismo


nombre_usuario = "admin"
contrasena = "123"
 
puts "Ingresa el nombre de usuario"
begin
  intento_usuario = gets.chomp
  if intento_usuario == nombre_usuario
    puts "Ingresa la contraseña"
    begin
      intento_contrasena = gets.chomp
      if intento_contrasena == contrasena
        puts "Bienvenido al sistema"
      else
        puts "Vuelve a ingresar la contraseña, la contraseña es incorrecta."
      end
    end until contrasena == intento_contrasena
  else
    puts "El nombre de usuarrio es incorrecto, vuelve a ingresarlo."
  end
end until nombre_usuario == intento_usuario
# EJEMPLO DE SALIDA:
# Ingresa el nombre de usuario
# admin
# Ingresa la contraseña
# abc
# Vuelve a ingresar la contraseña, la contraseña es incorrecta.
# 123
# Bienvenido al sistema


for numero in (1..10)
  numero *= 10
  break if numero == 50
  puts numero
end
# SALIDA
# 10
# 20
# 30
# 40


for numero in (1..10)
  numero *= 10
  next if numero == 50
  puts numero
end
# SALIDA
# 10
# 20
# 30
# 40
# 60
# 70
# 80
# 90
# 100


for numero in (1..10)
  numero *= 10
  redo if numero == 50
  puts numero
end
# SALIDA
# 10
# 20
# 30
# 40
# 500
# 60
# 70
# 80
# 90
# 100


for value in (1..5)
  puts "¡Hola, mundo!"
end


5.times {puts "¡Hola, mundo!"}


[1, 2, 3, 4, 5].each {|n| puts n}


[1, 2, 3, 4, 5].each do |n|
  puts n
end


3.times {|i| puts "Iteración: #{i}"}
# SALIDA:
# Iteración: 0
# Iteración: 1
# Iteración: 2


puts  "Números decimales a binarios del 1 - 8"
1.upto(8){|i| puts "Decimal: #{i} - Binario: #{i.to_s(2)}"}
# SALIDA:
# Números decimales a binarios del 1 - 8
# Decimal: 1 - Binario: 1
# Decimal: 2 - Binario: 10
# Decimal: 3 - Binario: 11
# Decimal: 4 - Binario: 100
# Decimal: 5 - Binario: 101
# Decimal: 6 - Binario: 110
# Decimal: 7 - Binario: 111
# Decimal: 8 - Binario: 1000


5.downto(0) do |i|
  unless i.zero?
    puts i
  else
    puts "¡Se acabó el tiempo!"
  end
end
# SALIDA:
# 5
# 4
# 3
# 2
# 1
# ¡Se acabó el tiempo!


5.downto(0) do |i|
  unless i.zero?
    puts i
  else
    puts "¡Se acabó el tiempo!"
  end
end
# SALIDA:
# 5
# 4
# 3
# 2
# 1
# ¡Se acabó el tiempo!


"Ruby".each_char {|caracter| puts caracter}
# SALIDA:
# R
# u
# b
# y


numeros = ["uno", "dos", "tres", "cuatro", "cinco"]


numeros.each {|descripcion| puts descripcion}
# SALIDA:
# uno
# dos
# tres
# cuatro
# cinco


numeros.reverse_each {|descripcion| puts descripcion}
# SALIDA:
# cinco
# cuatro
# tres
# dos
# uno


numeros.each_index {|indice| puts indice}
#SALIDA:
# 0
# 1
# 2
# 3
# 4


numeros.each_with_index {|descripcion, indice| puts "#{indice +1} = #{descripcion}"}
# SALIDA:
# 1 = uno
# 2 = dos
# 3 = tres
# 4 = cuatro
# 5 = cinco


numeros.each.with_index {|descripcion, indice| puts "#{indice +1} = #{descripcion}"}
# SALIDA:
# 1 = uno
# 2 = dos
# 3 = tres
# 4 = cuatro
# 5 = cinco


nombres_comunes = ["juan", "josé", "rosa", "víctor", "gabriela", "maría", "francisco", "pedro", "javier", "jorge", "daniel"]
nombres_comunes.map!{|nombre| nombre.capitalize!}
puts nombres_comunes
# SALIDA:
# Juan
# José
# Rosa
# Víctor
# Gabriela
# María
# Francisco
# Pedro
# Javier
# Jorge
# Daniel


numeros_telefonicos = ["2321729375", "2320952864", "2329162047", "2358392018", "2352377410", "2327799011"]

numeros_telefonicos.select! {|numero_telefonico| numero_telefonico.start_with?("232")}
puts numeros_telefonicos
# SALIDA:
# 2321729375
# 2320952864
# 2329162047
# 2327799011


numeros_telefonicos.reject! {|numero_telefonico| numero_telefonico.start_with?("232")}
puts numeros_telefonicos
# SALIDA:
# 2358392018
# 2352377410


datos_de_contacto = {nombre: "Juan Pérez Martínez", telefono: "5801402706", email: "juanperez@gmail.com"}

datos_de_contacto.each {|key, value| puts "#{key}: #{value}"}
# SALIDA:
# nombre: Juan Pérez Martínez
# telefono: 5801402706
# email: juanperez@gmail.com


datos_de_contacto.each_pair {|key, value| puts "#{key}: #{value}"}
# SALIDA:
# nombre: Juan Pérez Martínez
# telefono: 5801402706
# email: juanperez@gmail.com


datos_de_contacto.each_value {|value| puts value}
# SALIDA:
# Juan Pérez Martínez
# 5801402706
# juanperez@gmail.com


datos_de_contacto.each_key {|key| puts key}
# SALIDA:
# nombre
# telefono
# email


paises_y_lenguas = {"Argentina"=>"Español", "Estados Unidos"=>"Inglés", "España"=>"Español", "Brasil"=>"Portugués", "México"=>"Español"}



paises_es = paises_y_lenguas.select {|k,v| v.eql?("Español")}
puts paises_es
# => {"Argentina"=>"Español", "España"=>"Español", "México"=>"Español"}


system("pause")