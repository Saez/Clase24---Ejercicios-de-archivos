=begin
2) Contando líneasW
Crear un método que reciba el nombre de un archivo y este devuelva la cantidad de líneas que tiene un
archivo.
=end


def cantidad_de_lineas( nombre )


    begin

        archivo   = File.open( nombre, "r" )
        cantidad  = archivo.readlines
        archivo.close
        return cantidad.count

    rescue => mensaje

        puts "Ha ocurrido el siguiente error: #{mensaje}"
        
    end


end

puts "La cantidad de lineas del archivo es: #{cantidad_de_lineas( 'archivo.txt' )}"
