=begin
1) Escribiendo un archivo básico
Crear un método que reciba dos strings, este método creará un archivo index.html, y pondrá como parrafo
cada uno de los strings recibidos. - Modificar el método anterior para que además pueda recibir un arreglo, si
el arreglo no está vacío agregar debajo de los parrafos una lista ordenada con cada uno de los elementos. -
Modificar el método para que además pueda recibir un color, agregar color de fondo a los párrafos - El método
debe devolver nil
=end


def recibir_strings( string1, string2, arreglo = nil, color = nil )

    archivo = File.open( 'index.html', 'w' )

    estilo = !color.nil? ? " style='background-color:#{color}'" : ''

    archivo.puts "<p#{estilo}>#{string1}</p>"
    archivo.puts "<p#{estilo}>#{string2}</p>"

    if ! arreglo.nil?
        archivo.puts '<ol>'
        arreglo.each do | valor |

            archivo.puts "<li>#{valor}</li>"

        end
        archivo.puts '<ol>'
    end

    archivo.close

end

recibir_strings( "Primera linea", "Segunda linea", ['uno', 'dos', 'tres', 'cuatro'], 'red' )
