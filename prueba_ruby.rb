def read_alum(file_name)
    file = File.open(file_name, 'r')
    alum = file.readlines.map(&:chomp).map { |lines| lines.split(', ') }
    file.close
    alum
end




    
















option = 0
while option != 4 do
    puts 'Ingrese una opción:'
    puts 'Opción 1) Alumnos : Promedios'
    puts 'Opción 2) Alumnos : Inasistencias'
    puts 'Opción 3) Alumnos Aprobados'
    puts 'Opción 4) Terminar Programa'
    option = gets.chomp.to_i


    if option == 1
    elsif option == 2
    elsif option == 3
    elsif option == 4
        puts 'Salir'
    else
        puts 'Valor ingresado no válido, pruebe con una opción válida'
    end
end
    