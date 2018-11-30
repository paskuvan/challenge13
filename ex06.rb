menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

expensive = menu.max_by{|k,v| v}
puts expensive[0]

cheap = menu.min_by{|k,v| v} 
puts cheap[0]
sum = menu.values.inject(0){|sum, x| sum + x} 

puts sum / menu.size 

platos = menu.keys 

puts platos, "\n"

precios = menu.values 
puts precios, "\n"

menu.each {|k, v| menu[k] = v * 1.19}
puts menu, "\n"