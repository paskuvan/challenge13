meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

h = Hash[meses.zip(ventas)]

print h, "\n"

invertir_hash = h.invert

valor_max = invertir_hash.max_by{|k,v| k}

puts valor_max[1]