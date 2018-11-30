personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

h = Hash[personas.zip(edades)]

print h, "\n"

def promedio_edad(hash, key)
  hash[key]
end

puts promedio_edad(h, 'Alejandro')