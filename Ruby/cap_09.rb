#CAPÍTULO 9: FECHAS Y HORAS


tiempo = Time.new(2019, 1, 30, 17, 37, 9, "-06:00")
puts tiempo
# => 2019-01-30 17:37:09 -0600


Time.new


Time.now


#Año
puts tiempo.year # => 2019
#Mes
puts tiempo.month # => 1
#Día
puts tiempo.day # => 30


#Día de la semana
puts tiempo.wday # => 3
#Día del mes
puts tiempo.mday # => 30
#Día del año
puts tiempo.yday # => 30 


puts tiempo.monday? # => false
puts tiempo.thursday? # => false


# Hora
puts tiempo.hour # => 17
# Minuto
puts tiempo.min # => 37
# Segundo
puts tiempo.sec # => 9
# Microsegundos
puts tiempo.usec # => 0
# Nanosegundo
puts tiempo.nsec # => 0


require 'date'
Date.today


require 'date'
fecha_nacimiento = Date.new(1995, 8, 7)


puts fecha_nacimiento.sunday? # => false
puts fecha_nacimiento.thursday? # => false


puts fecha_nacimiento.year # => 1995
puts fecha_nacimiento.month # => 8
puts fecha_nacimiento.day # => 7


puts fecha_nacimiento.cweek # => 32


puts fecha_nacimiento.prev_day(7) # => 1995-07-31


puts fecha_nacimiento.next_day(24) # => 1995-08-31


require 'date'
fecha_hora = DateTime.new(1570, 12, 12, 17, 37, 9, "-06:00")


puts fecha_hora.min # => 37


fecha_hora_expedicion = Time.new(2018, 12, 7, 7, 7, 54, "-06:00")
puts fecha_hora_expedicion
# => 2018-12-07 07:07:54 -0600


puts fecha_hora_expedicion.strftime('%d/%m/%y')
# => 07/12/18


puts fecha_hora_expedicion.strftime('%m/%d/%y')
# => 12/07/18


puts fecha_hora_expedicion.strftime('%D')
# => 12/07/18


puts fecha_hora_expedicion.strftime('%H:%M:%S')
# => 07:07:54


puts fecha_hora_expedicion.strftime('%T')
# => 07:07:54


hora_maxima_entrega = Time.new(2019, 2, 5, 20, 0, 0,"-06:00")
 
hora_entrega_manuel = Time.new(2019, 2, 5, 16, 2, 32,"-06:00")
hora_entrega_ana = Time.new(2019, 2, 5, 20, 0, 0,"-06:00")
hora_entrega_jose = Time.new(2019, 2, 5, 20, 0, 1,"-06:00")


puts hora_entrega_manuel <= hora_maxima_entrega
# => true


puts hora_entrega_jose <= hora_maxima_entrega
# => false


puts hora_entrega_ana == hora_maxima_entrega
# => true


system("pause")
