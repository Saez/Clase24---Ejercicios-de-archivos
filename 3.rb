=begin
3) Contando palabras
Crear un método que reciba el nombre de un archivo, lo abra y cuente la cantidad de palabras, el método debe
devolver la cantidad. - Modificar el método para que además reciba un string, en ese caso el método debe
contar únicamente las apariciones de esa palabra.
=end

def contar_palabras( nombre, palabra = nil )

    begin

        archivo   = File.open( nombre )
        contenido = archivo.read.split(" ")
        archivo.close

        if !palabra.nil?
            count = 0
            contenido.each do | valor |
                if palabra.downcase === valor.downcase

                    count += 1

                end
            end
            return count
        else
            return contenido.count
        end


    rescue => error
        puts "Se ha presentado el siguiente error: #{error}"
    end


end

puts contar_palabras( "archivo-palabras.txt" )
