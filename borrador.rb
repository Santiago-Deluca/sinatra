
puts "Por favor ingresa un dia del mes "
print ">"
day = gets.chomp.to_i

puts "Por favor ingresa el mes"
print ">"
month  = gets.chomp.to_i

puts "Ahora ingresa los cuatro digitos del anio "
print ">"
year = gets.chomp.to_i

code_days = [0,1,2,3,4,5,6]
day_week = ["Domingo","Lunes","Martes","Miercoles","Jueves","Viernes","Sabado"]
amount_days_in_month = [31, 28, 31, 30,31, 30, 31, 31, 30, 31, 30, 31]
resultado =["scr=images/ba.jpg","scr=images/repl1.png", "scr=images/repl2.png","scr=images/repl3.png","scr=images/repl4.png", "scr=images/repl3.png","scr=images/ba.jpg"]
# Determino si el anio es bisieto o no


def leap_year(year)
  if year % 4 == 0 &&  year % 100 != 0  || year % 400 ==0
    return "bisiesto"
  else
    return "No es bisiesto"
  end
end

unless leap_year(year)== "bisiesto"
  month_code =[6,2,3,6,1,4,6,2,5,0,3,5]
  mm = month_code[month-1]
else
  month_code = [0,3,3,6,1,4,6,2,5,0,3,5]
  mm = month_code[month-1]
end

# Determino el codigo del siglo
if 1600 <=year && year<=1699
   y3y4 = year -1600
   ss = 6
elsif 1700 <=year && year<=1799
  y3y4 = year -1700
  ss = 4
elsif 1800 <=year && year<=1899
  y3y4 = year -1800
  ss = 2
elsif 1900 <=year && year<=1999
  y3y4 = year -1900
  ss = 0
elsif 2000 <=year && year<= 2099
  y3y4 = year -2000
  ss = 6
else
  puts "Por favor ingrese un valor entre 1600 y 2099"
end

def comprobar_fecha( day,month,year)
    if month > 12
      return "La fecha ingresada es invalida"
    end

    amount_days_in_month = [31, 28, 31, 30,31, 30, 31, 31, 30, 31, 30, 31]
     if (day >0 && day <= amount_days_in_month[month-1]) && (month >= 1  &&  month < 13) && (year>= 1600 && year<= 2099)
     return "La fecha ingresada es valida"
    else
      return "La fecha ingresada es invalida"
    end
end


  puts " Primero dejame ver si ingresaste una fecha valida "
  puts leap_year(year)
  puts comprobar_fecha(day,month,year)

if comprobar_fecha(day,month,year) == "La fecha ingresada es valida"
  x =( day +  mm  + y3y4 + y3y4/4 + ss ) % 7
  puts "Segun mis calculos la fecha que pusiste cayo o cae  un #{day_week[x]} y su imagen esta en #{resultado[x]}"
else
  puts "Por favor ingrese una fecha valida"
end




#   x =( day +  mm  + y3y4 +
