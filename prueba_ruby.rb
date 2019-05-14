def read_alum(file_name)
    file = File.open(file_name, 'r')
    alum = file.readlines.map(&:chomp).map { |lines| lines.split(', ') }
    file.close
    alum
end

curso = read_alum('alumnos.csv')


def promedios(curso)

    curso.each do |alumno|
        promedio = 0
        acu = 0
        puts "El alumno(a) #{alumno[0]} tiene un promedio de: "
            alumno.each_with_index do |nota,index|
            acu += nota.to_i if index != 0
            end
        promedio = acu/(alumno.length - 1).to_f
        puts promedio    
    end    
end

def inasistencias(curso)

    curso.each do |alumno|
        puts "El alumno(a) #{alumno[0]} tiene #{alumno.count('A')} inasistencias" 
    end
end


def alumno_aprobado(curso)
    puts "Alumnos aprobados: "
    curso.each do |alumno|
        promedio = 0
        acu = 0
        alumno.each_with_index do |nota,index|
            acu += nota.to_i if index != 0
        end
    promedio = acu/(alumno.length - 1).to_f
    puts alumno[0] if aprobar(promedio) == true 
    
    end
end

def aprobar(nota)
    if nota >= 5.0
        return true
    end
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
        promedios(curso)

    elsif option == 2
        inasistencias(curso)

    elsif option == 3
        alumno_aprobado(curso)

    elsif option == 4
        puts 'Salir'

    else
        puts 'Valor ingresado no válido, pruebe con una opción válida'
    end
end
    