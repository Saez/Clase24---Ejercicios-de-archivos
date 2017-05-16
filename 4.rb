=begin
4) Ejercicio fácil tipo prueba
Se tiene un archivo con diversos productos, donde la primera columna indica el nombre del producto y la
segunda el stock
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
    opcion = gets.chomp.to_i


    if opcion > 4
        puts "La opción ingresada es inválida"
    end

    break if opcion > 0 && opcion < 5
end

archivo   = File.open( "productos.txt" )
contenido = archivo.readlines
archivo.close


if opcion === 1

    puts "La cantidad de productos es de: #{contenido.count}"

elsif opcion === 2

    puts ""
    puts "Ingrese el nombre de un producto"
    nombre = gets.chomp

    count = 0
    contenido.each_slice(1) do | valor |

        producto = valor[0].split(",")

        if nombre.downcase == producto[0].downcase

            puts "La cantidad de stock es de: #{producto[1]}"

        end
    end

elsif opcion === 3

    contenido.each_slice(1) do | valor |

        producto = valor[0].split(",")

        if producto[1].to_i < 5

            puts "#{producto[0]}"

        end
    end

else

    puts "Haz salido del programa"

end
