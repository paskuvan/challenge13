inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
p inventario

def add_element(hash)
  print hash, "\n"
  puts 'Agregar un item'
  input = gets.split(',').map { |ele| ele.strip } 
  hash[input[0].to_sym] = input[1].to_i
  puts hash
end

def delete_element(hash)
  print hash, "\n"
  puts 'Elimina un item'
  choice = gets.chomp.split.map(&:capitalize).join(' ') 
  hash.delete(choice.to_sym) { |ele| puts "#{ele} no se encuentra en el inventario" } 
  print hash
end
def update_element(hash)
  print hash, "\n"
  puts 'Actualizar'
  updated_element = gets.chomp.split.map(&:capitalize).join(' ')
  puts 'Ingresa el nuevo stock'
  updated_stock = gets
  hash[updated_element.to_sym] = updated_stock.to_i
  p hash
end
def stock_summary(hash)
  stock = hash.values.inject(0) { |sum, v| sum + v }
  puts "El inventario actual tiene #{stock} items"
end
def max_stock(hash)
  max = hash.max_by { |key, value| value }
  puts "El producto con mayor stock es #{max[0]} con #{max[1]} elementos."
end
def check_if_exists(hash)
  puts 'Ingresa el item que quieres buscar'
  item = gets.chomp.split(' ').map(&:capitalize).join(' ').to_sym
  if hash[item]
    puts 'El producto si se encuentra en el inventario'
  else
    puts 'El producto no se encuenta en el inventario'
  end
end

#Se pide:
puts 'Ingresa una de estas opciones'
opcion = 0
while opcion != '7'
  puts 'Opcion 1: Agregar'
  puts 'Opcion 2: Eliminar'
  puts 'Opcion 3: Actualizar'
  puts 'Opcion 4: Total stock'
  puts 'Opcion 5: Mayor cantidad de stock'
  puts 'Opcion 6: Buscar'
  puts 'Opcion 7: Salir'

  opcion = gets.chomp

  puts case opcion
  when '1'
    add_element(inventario)
  when '2'
    delete_element(inventario)
  when '3'
    update_element(inventario)
  when '4'
    stock_summary(inventario)
  when '5'
    max_stock(inventario)
  when '6'
    check_if_exists(inventario)
  else
    exit
  end
end