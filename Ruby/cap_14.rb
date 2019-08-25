# CAPÍTULO 14: LOS MÉTODOS


def imprimir_frase
  puts "Mi primer método propio en Ruby"
end


imprimir_frase # => Mi primer método propio en Ruby


imprimir_frase # => Mi primer método propio en Ruby
imprimir_frase # => Mi primer método propio en Ruby


# 1000000.times {|i| imprimir_frase}


@lista_de_deseos = []
 
def agregar deseo
  @lista_de_deseos << deseo
end
 
alias anadir agregar

anadir("Conocer más a Ruby")
anadir("Aprender Rails")
agregar("Crear aplicaciones web")
 
print @lista_de_deseos
# => ["Conocer más a Ruby", "Aprender Rails", "Crear aplicaciones web"]


def sumar
  suma = 3 + 5
end
 
puts sumar # => 8


def sumar(numero1, numero2)
  suma = numero1 + numero2
end


puts sumar(7, 3) # => 11


# sumar(7)


def ordenar_elementos(elementos, orden = "ascendente")
  if orden == "ascendente"
    elementos.sort
  elsif orden == "descendente"
    elementos.sort.reverse
  end
end

nombres = ["Manuel", "Javier", "Santiago", "Carlos", "Francisco", "Patricia"]

elementos_ordenados = ordenar_elementos(nombres, "descendente")
print elementos_ordenados # => ["Santiago", "Patricia", "Manuel", "Javier", "Francisco", "Carlos"]


elementos_ordenados = ordenar_elementos(nombres)
print elementos_ordenados # => ["Carlos", "Francisco", "Javier", "Manuel", "Patricia", "Santiago"]


# Argumentos con valores por defecto al inicio
def nombre_metodo (arg_1 = 28, arg_2 = 56, arg_3)
end

# Argumentos con valores por defecto al final
def nombre_metodo (arg_3, arg_1 = 28, arg_2 = 56)
end


# def nombre_metodo (arg_1 = 28, arg_3, arg_2 = 56)
# end


def calcular_suma(primer_numero:0, segundo_numero:0)
  suma = primer_numero + segundo_numero
end


puts calcular_suma() # => 0


puts calcular_suma(primer_numero: 7, segundo_numero: 40)# => 47


puts calcular_suma(segundo_numero: 40, primer_numero: 7)# => 47


# calcular_suma(primer_numero: 7, segundo_number: 40,)


def calcular_promedio(*calificaciones)
  calificaciones.sum / calificaciones.count
end


promedio = calcular_promedio(70, 87, 98, 91, 76, 84, 99)
puts "El promedio final es: #{promedio}" # => El promedio final es: 86


promedio = calcular_promedio(70, 73, 82, 96, 85)
puts "El promedio final es: #{promedio}" # => 81


def mostrar_calificacion_materia(**materias)
  puts "Calificación de cada materia"
  materias.each_pair {|k, v| puts "#{k}: #{v}"}
end
 
mostrar_calificacion_materia('Recortes II': 75, 'Plástilina one': 90, 'Dramas': 100)
# SALIDA:
# Calificación de cada materia
# Recortes II: 75
# Plástilina one: 90
# Dramas: 100


3.times {puts "¡Hola, mundo!"}
# SALIDA:
# ¡Hola, mundo!
# ¡Hola, mundo!
# ¡Hola, mundo!


3.times do
  puts "¡Hola, mundo!"
  puts "Nuevamente: ¡Hola, mundo!"
end
# SALIDA:
# ¡Hola, mundo!
# Nuevamente: ¡Hola, mundo!


puts [1,2,3].map { |numero| numero * 10}
# SALIDA:
# 10
# 20
# 30


puts [1,2,3].map do |numero|
  numero * 20
end
# => <Enumerator:0x0000010a06d140>


def que_soy?
  yield
end
 
que_soy? { puts "Soy un bloque de código"}
# => Soy un bloque de código 


que_soy? do
  puts "Soy un bloque de código"
end


# que_soy?
# SALIDA:
# bloques_de_codigo.rb:46:in `que_soy?': no block given (yield) (LocalJumpError)
#          from bloques_de_codigo.rb:58:in `<main>'


def que_soy?
  if block_given?
    yield
  else
    puts "No sé"
  end
end
 
que_soy? { puts "Soy un bloque de código"}
# => Soy un bloque de código
que_soy?
# => No sé


def seleccionar coleccion
  elementos_seccionados = []
  for i in coleccion
    if yield i
      elementos_seccionados.push(i)
    end
  end
  elementos_seccionados
end
 
arreglo = [1, 5, 6, 7, 8, 3, 4, 9]
puts seleccionar(arreglo) {|valor| valor <= 5}
# SALIDA:
# 1
# 5
# 3
# 4


# bloque = {puts "Soy un bloque"} 


bloque_proc = Proc.new {puts "Ya soy un objeto"}


bloque_lambda = lambda {puts "Ya soy un objeto"}


def quien_soy? descripcion
  if descripcion.lambda?
    identidad = ["una princesa", "un programador"].sample
    descripcion.call identidad
  else
    puts "No sé"
  end
end
 
def como_soy? descripcion
  if descripcion.lambda?
    caracteristica = ["bonito", "feo, pero tengo dinero XD"].sample
    descripcion.call caracteristica
  else
    puts "No sé"
  end
end
 
mi_proc = lambda {|descripcion| puts "Soy #{descripcion}"}
 
como_soy? mi_proc
# => Soy feo, pero tengo dinero XD
 
quien_soy? mi_proc
# => Soy una princesa


def seleccionar_por_rango condicion_1, condicion_2
  seleccionados = []
  serie_numerica = 1..100
 
  serie_numerica.each do |numero|
    seleccionados << numero if condicion_1.call(numero) && condicion_2.call(numero)
  end
  return seleccionados
end
 
valor_minimo = lambda {|n| n > 79}
valor_maximo = lambda {|n| n < 84}
 
puts seleccionar_por_rango valor_minimo, valor_maximo
# SALIDA:
# 80
# 81
# 82
# 83


def quien_soy?
  if block_given?
    identidad = ["una princesa", "un programador"].sample
    yield identidad
  else
    puts "No sé"
 end
end
 
mi_proc = lambda {|descripcion| puts "Soy #{descripcion}"}
 
quien_soy? &mi_proc
# => Soy un programador


def factorial_con_ciclo(n)
  factorial = 1
  while n >= 1
    factorial *= n unless n.zero?
    n -= 1  
  end
  return factorial
end
 
puts factorial_con_ciclo(5) # => 120


def factorial_recursivo(n)
  n.zero? ? 1 : n * factorial_recursivo(n - 1)
end  
 
puts factorial_recursivo 5 # => 120


require 'benchmark'

Benchmark.bm (7) do |x|
  x.report ("Factorial con ciclos:") {factorial_con_ciclo(10000)}
  x.report ("Factorial recursivo:") {factorial_recursivo(10000)}
end


system("pause")




