#CAPÍTULO 8: CADENAS DE CARACTERES

puts "Cadena en comillas dobles".class # => String
puts 'Cadena en comillas simples'.class # => String


# puts 'Cadena en comillas dobles y simples" 


"Colección de caracteres"


trabalenguas = "Tres tristes tigres tragaban trigo en un trigal..."
puts trabalenguas.length # => 50
puts trabalenguas.size # => 50


puts "sanar".reverse # => ranas


puts " ".empty? # => false
puts "".empty? # => true
puts "hola".empty? # => false


p " Cadena sin espacios ni al principio ni al final  ".strip
# => "Cadena sin espacios ni al principio ni al final"


puts "Esta cadena se limpiará".clear # => ""


puts "primera letra en mayúscula".capitalize
# => Primera letra en mayúscula


puts "MAYÚSCULAS A MINÚSCULAS".downcase
# => mayúsculas a minúsculas


puts "minúsculas a mayúsculas".upcase
# => MINÚSCULAS A MAYÚSCULAS


puts "miNúscuLas poR mAyúsCULAS y maYÚsculAs pOr minúsCulas".swapcase
# => MInÚSCUlAS POr MaYÚSculas Y MAyúSCULaS PoR MINÚScULAS


respuesta_usuario = "Helo"
respuesta_correcta = "Hello"
 
puts respuesta_correcta.eql?(respuesta_usuario)
# => false


puts respuesta_correcta == respuesta_usuario
# => false


puts "Rails".eql?("Rails  ")
# => false


puts "Rails".eql?("Rails")
# => true


"Rails".eql?("rails")


cadena_inconsistente = "HOla mundo    "
cadena_a_comparar = "hola mundo"
cadena_a_comparar.eql?(cadena_inconsistente.strip.downcase)
#=> true


nombre_s = "Javier Arturo"
apellido_p = "Vázquez"
apellido_m = "Olivares"
 
nombre_completo = nombre_s + " " + apellido_p + " " + apellido_m
puts nombre_completo
# => Javier Arturo Vázquez Olivares


proposito_ruby = "Ruby está diseñado para la "
proposito_ruby << "productividad " << 'y diversión del desarrollador' << 46
puts proposito_ruby
# => Ruby está diseñado para la productividad y diversión del desarrollador.


union_concat = "Ruby está diseñado para la "
union_concat.concat("productividad ", 'y diversión del desarrollador', 46)
puts union_concat
# => Ruby está diseñado para la productividad y diversión del desarrollador.


"wasd" << "fjrd" << "gvdxd" << "asdasd" << "bbdxc" << "gdfg" << "zbcdb"


cadena = "Todos deberían de aprender a programar en Ruby porque es fácil y rápido de aprender"
puts cadena.include?("Ruby") # => true


puts "2321096722".start_with?("232") # => true


palabra = "Ajedrez"
puts palabra.end_with?("z") # => true


caracteres = "caracteres"
puts caracteres[0] # => c


puts "fragmento de una cadena"[0..8] # => fragmento


puts "fragmento de una cadena"[0,9] # => fragmento



p "Uno, dos, , cuatro, cinco".insert(10, "tres")
# => “Uno, dos, tres, cuatro, cinco”


insercion_dia = "Hoy es: "
insercion_dia.insert(8, "jueves")
puts insercion_dia # => Hoy es: jueves


puts "Francisco".prepend("Sr. ")
# => Sr. Francisco


puts "100 manzanas + 70 manzanas - 50 manzanas = 120 frutas".sub("manzanas", "peras")
# => 100 peras + 70 manzanas - 50 manzanas = 120 frutas


puts "100 manzanas + 70 manzanas - 50 manzanas = 120 frutas".gsub("manzanas", "peras")
# => 100 peras + 70 peras - 50 peras = 120 frutas


texto = "Tengo un perrito muy bonito y se llama Toby"
texto.replace("Me gustan más los gatos que los perros")
puts texto
# => Me gustan más los gatos que los perros


palabra = "Fabuloso"
palabra.slice!(0..4)
puts palabra # => oso


lenguaje = "Ruby on Rails"
lenguaje.slice!(-9..-1)
# O así: lenguaje.slice!(-9, 9)
puts lenguaje # => Ruby


red_social = "Facebook"
red_social.delete!("Face")
puts red_social # => book


# "Matz dijo: "Ruby es simple en apariencia, pero complejo por dentro, como el cuerpo humano"" 


cita_correcta = "Matz dijo: \"Ruby es simple en apariencia, pero complejo por dentro, como el cuerpo humano\""
puts cita_correcta
# => Matz dijo: "Ruby es simple en apariencia, pero complejo por dentro, como el cuerpo humano"


puts "C:\Users\UserName\Documents\Ejemplos\Ruby\cadenas.rb"
# => C:UsersUserNameDocumentsEjemplosRuby☺ denas.rb


puts "C:\\Users\\UserName\\Documents\\Ejemplos\\Ruby\\cadenas.rb"
# => C:\Users\UserName\Documents\Ejemplos\Ruby\cadenas.rb


num_1, num_2 = 12, 2
interpolacion = "#{num_1} manzanas + #{num_2} manzanas = #{num_1 + num_2} manzanas"
puts interpolacion # => 12 manzanas + 2 = 14 manzanas


nombre = "juan pérez martínez"
puts "#{nombre.upcase}, BIENVENIDO A RUBY"
# => JUAN PÉREZ MARTÍNEZ, BIENVENIDO A RUBY


estado_animo = "Feliz"
puts "Esta mañana, Jose amaneció bien #{if estado_animo == "Feliz" then ":)" else ":(" end}"
# => Esta mañana, Jose amaneció bien :)


novato = "josé"
puts 'Hola, soy #{novato.capitalize} y me gusta mucho experimentar.\n'
# => Hola, soy #{novato.capitalize} y me gusta mucho experimentar.\n


puts 'I\'m a ruby programmer'
# => I'm a ruby programmer


puts 'C:\\Users\\UserName\\Documents\\Ejemplos\\Ruby\\cadenas.rb'
# => C:\Users\UserName\Documents\Ejemplos\Ruby\cadenas.rb


cadena_llaves = %Q{cadena usando llaves}
cadena_corchetes = %Q[cadena usando corchetes]
cadena_parentesis =%Q(cadena usando paréntesis)


%Q(Comillas dobles: ", ", "...)
%q(Comillas simples: ', ', '...)


documento = <<HEREDOC
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
HEREDOC


  documento = <<~NOTA
      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
  NOTA
puts documento
# SALIDA:
# Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
#       Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.


system("pause")