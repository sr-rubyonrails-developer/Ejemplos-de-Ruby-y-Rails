# CAPÍTULO 12: CONDICIONALES

if true
  puts "Dentro del if"
end
# => Dentro del if


if false
  puts "Dentro del if"
end
puts "Fuera del if"
# => Fuera del if


edad = 26
if edad >= 18
  puts "Es mayor de edad, se le puede otorgar el crédito"
end
#=> Es mayor de edad, se le puede otorgar el crédito


edad = 26
if edad >= 18
  puts "Es mayor de edad, se le puede otorgar el crédito"
end
#=> Es mayor de edad, se le puede otorgar el crédito


puts "¿Sol o águila?"
respuesta_hermano = "sol"
volado = ["sol", "águila"].sample
 
if volado.eql?(respuesta_hermano)
  puts "¡Caray! me tocan lavar los trastes a mí"
else
  puts "Le tocan lavar los trastes a mi hermano"
end
# => Le toca lavar los trastes a mi hermano


dia = false
if dia then puts "Apagar la luz" else puts "Encender la luz" end
# => Encender la luz


dia = true
lampara = if dia then "Apagar la luz" else "Encender la luz" end
puts lampara # => Apagar la luz


dia = true
lampara = dia ? "Apagar la luz" : "Encender la luz"
puts lampara # => Apagar la luz


clima = "lluvioso"
decision_tomada = if clima.eql?("soleado")
  "Me voy a la playa con mis amigos"
elsif clima.eql?("nublado")
  "Esperaremos un poco con la esperanza de salir más tarde"
elsif clima.eql?("lluvioso")
  "Se nos arruinó la salida a todos"
end
puts decision_tomada # => Se nos arruinó la salida a todos


numero = -12
descripcion = if numero.positive?
  "Es positivo"
elsif numero.negative?
  "Es negativo"
elsif numero.zero?  
  "Es neutral"
else
  "No es un número"
end
puts descripcion
# => Es negativo


objeto = 7
tipo_objeto = if objeto.is_a?(String) then "Es una cadena"
elsif objeto.is_a?(Float) then "Es un número flotante"
elsif objeto.is_a?(Integer) then "Es un número entero"
elsif objeto.is_a?(Time) then "Es una fecha"
elsif objeto.is_a?(Array) then "Es un arreglo"
elsif objeto.is_a?(Hash) then "Es un hash"
else "Es otro tipo de dato"
end
puts tipo_objeto # => Es un número entero


objeto = 7
tipo_objeto = case
when objeto.is_a?(String) then "Es una cadena"  
when objeto.is_a?(Float) then "Es un número flotante"
when objeto.is_a?(Integer) then "Es un número entero"
when objeto.is_a?(Time) then "Es una fecha"
when objeto.is_a?(Array) then "Es un arreglo"
when objeto.is_a?(Hash) then "Es un hash"
else "Es otro tipo de dato"
end
puts tipo_objeto # => Es un número entero



fecha = Time.now()
dia_semana = case
when fecha.sunday? then "domingo"
when fecha.monday? then "lunes"
when fecha.tuesday? then "martes"
when fecha.wednesday? then "miércoles"
when fecha.thursday? then "jueves"
when fecha.friday? then "viernes"
when fecha.saturday? then "sábado"
end
puts dia_semana


puts "Ingresa la clave del producto"
clave = gets.chomp.to_i
producto = case clave
when 11 then "yogurt"
when 22 then "papas"
when 33 then "jugo"
when 44 then "agua natural"
when 55 then "refresco"
when 66 then "galletas"
when 77 then "barra de chocolate"
when 88 then "cacahuates"
when 99 then "leche"
else
  "No hay ningún producto con esa clave"
end    
puts producto  


puntaje_test = 200 
descripcion = case puntaje_test
when 130..300 then "Superdotado" #Que alguién llegue o supere a 300 está por verse, tal vez sea yo y no me he dado cuenta XD.
when 120..129 then "Brillante"
when 110..119 then "Inteligente"
when 90..109 then "Normal"
when 80..89 then "Poco inteligente"
when 70..79 then "limítrofe (bordeline o fronterizo)"
when 50..69 then "Deficiencia mental superficial"
when 30..49 then "Deficiencia mental media"
when 0..29 then "Deficiencia mental profunda"
end
puts descripcion # => Superdotado


unless false
  puts "Entré en el unless"
else
  puts "Entré en el else"
end
# => Entré en el unless


mi_hueso = "sano"
unless mi_hueso.eql?("roto")
  puts "Seguiré patinando"
end
# => Seguiré patinando


productos = ["lentejas", "frijol", "garbanzo"]
unless productos.empty?
  puts "Hay #{productos.count} productos agregados"
  #Echa a volar tu imaginación. Si el arreglo está lleno puedes...
end
# => Hay 3 productos agregados


require 'date'
dia = Date.new(2018, 12, 21)
#La fecha es: viernes, 21 de diciembre de 2018

# Condicional unless
unless dia.sunday?
  puts "Hay que trabajar"
else
  puts "Hay que descansar"
end
# => Hay que trabajar
 
# Condicional if
if dia.sunday?
  puts "Hay que trabajar"
else
  puts "Hay que descansar"
end
# => Hay que descansar


if dia.sunday?
  puts "Hay que descansar"
else
  puts "Hay que trabajar"
end
# => Hay que trabajar


if !dia.sunday?
  puts "Hay que trabajar"
else
  puts "Hay que descansar"
end
# => Hay que trabajar


i = 0
if i.zero?
  i += 1
end 


i = 0
i += 1 if i.zero?


# Operador lógico !
puts !true # => false
puts !false # => true


edad = 16
puts !(edad < 18)
# => false


puts !("Jalapa".start_with?("X"))
# => true


# Operador lógico &&
puts true && true # => true
puts true && false # => false
puts false && true # => false
puts false && false # => false


nivel_ingles = 100
lenguaje = "PHP"
 
puts (lenguaje.eql?("Ruby")) && nivel_ingles >= 70
# => false


nivel_ingles = 70
lenguaje = "Ruby"

puts (lenguaje.eql?("Ruby")) && nivel_ingles >= 70
# => true


puts ("cadena".length == 6) && (57.integer?)
# => true


# Operador lógico ||
puts true || true # => true
puts true || false # => true
puts false || true # => true
puts false || false # => false


carro = "negro"
puts "Hay que cambiarle color" if carro.eql?("negro") || carro.eql?("blanco")
# => Hay que campiarle color


numero = -77.0
puts numero.positive? || (numero.is_a? Integer)
# => false


puts !true && true || true # => true


puts !true && (true || true) # => false


permiso_padre = true
permiso_madre = false
 
consecuencia = if permiso_padre && permiso_madre # Tiene que tener el permiso de ambos padres.
    "Puedes salir sin probrema"
  # Con el permiso del papá, pero sin el de la mamá.
  elsif permiso_padre == true && permiso_madre == false
    "No comerás por una semana en casa"
  # Con el permiso de la mamá, pero no con el del papá.
  elsif permiso_padre == false && permiso_madre == true
    "Te dará un castigo severo"
  # Sin el permiso del papá ni el de la mamá.
  elsif permiso_padre == false && permiso_madre == false
    "La cosa se va a poner difícil al llegar a casa"
  end
puts consecuencia
#=> No comerás por una semana en casa


#IMC = Índice de Masa Corporal
#Declaración de variables
sexo, edad, estatura, peso = "Hombre", 18, 1.57, 50
#Se calcula el IMC
imc = (peso / (estatura ** 2)).round(1)
#El IMC para hombres se extiende hasta el proximo else.
clasificacion = if sexo == "Hombre"
  #El IMC depende de la edad.
  case edad
  #Se toma en cuenta la edad
  when 16
    #Según los valores de la tabla del IMC para adolescentes de 16 años.
    if imc < 16.4
      "IMC BAJO"
    elsif (16.4..24.3) === imc
      "IMC NORMAL"
    elsif imc >= 24.4 && imc < 29.4
      "IMC SOBREPESO"
    elsif imc >= 29.4
      "IMC OBESIDAD"
    end
  when 17
    if imc < 16.8
      "IMC BAJO"
    elsif (16.8..24.7) === imc
      "IMC NORMAL"
    elsif imc >= 24.7 && imc < 29.7
      "IMC SOBREPESO"
    elsif imc >= 29.7
      "IMC OBESIDAD"
    end
  when 18
    if imc < 17.2
      "IMC BAJO"
    elsif (17.2..25.0) === imc
      "IMC NORMAL"
    elsif imc >= 25.0 && imc < 30.0
      "IMC SOBREPESO"
    elsif imc >= 30.0
      "IMC OBESIDAD"
    end
  end
else
  # Este espacio es para calcular el IMC de una mujer. (Tu tarea)
end
 
puts clasificacion # => IMC NORMAL


system("pause")