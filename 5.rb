=begin
5) Archivos menú y arrays
Se tiene un archivo con diversos productos, donde la primera columna indica el nombre del producto y el resto
de las columnas muestra el stock en distintas tiendas.
=end

opcion = 0
loop do
    puts "---------------------------"
    puts "|         MENU            |"
    puts "---------------------------"
    puts ""
    puts "Ingrese una opción:"
    puts ""
    puts "1."
    puts "2."
    puts "3."
    puts "4."
    puts "5."
    opcion = gets.chomp.to_i


    if opcion > 5
        puts "La opción ingresada es inválida"
    end

    break if opcion > 0 && opcion < 6
end

archivo   = File.open( "productos2.txt" )
contenido = archivo.readlines
archivo.close

if opcion === 1

    suma = 0
    contenido.each_slice(1) do | valor |

        producto = valor[0].split(", ")

        producto.each_with_index do | valor2, llave |

            if llave > 0 && valor2 != "NR"

                suma+= valor2.to_i

            end

        end

    end

    puts "La suma total de todos los productos en todas las bodegas es de: #{suma}"
    puts "La cantidad total de items es de: #{contenido.count}"

elsif opcion === 2

    puts ""
    puts "Ingrese el nombre de un producto"
    nombre = gets.chomp

    suma = 0
    contenido.each_slice(1) do | valor |

        producto = valor[0].split(", ")

        if nombre.downcase == producto[0].downcase

            producto.each_with_index do | valor2, llave |

                if llave > 0 && valor2 != "NR"

                    suma+= valor2.to_i

                end

            end

        end

    end

    puts "La cantidad de stock total para el producto: #{nombre} es de: #{suma}"

elsif opcion === 3

    sin_registrar = []
    contenido.each_slice(1) do | valor |
        producto = valor[0].split(", ")

        producto.each_with_index do | valor2, llave |

            if valor2.chomp == "NR"
                sin_registrar.push(producto[0])
                break
            end

        end

    end

    print sin_registrar

elsif opcion === 4

    puts ""
    puts "Ingrese el nombre de un producto"
    nombre = gets.chomp
    puts "Ingrese stock de bodega1"
    stock1 = gets.chomp
    puts "Ingrese stock de bodega2"
    stock2 = gets.chomp
    puts "Ingrese stock de bodega3"
    stock3 = gets.chomp

    open('productos2.txt', 'a') { |f|
      f.puts "#{nombre}, #{stock1}, #{stock2}, #{stock3}"
    }

else

    puts "Haz salido del programa"

end
