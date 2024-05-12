program Registros;
 type
    str20 = string[20];
    alumno = record
        codigo : integer;
        nombre : str20;
        promedio : real;
 end;

 procedure leer(var alu : alumno);
 begin
    write('Ingrese el código del alumno');
    readln(alu.codigo);
    if (alu.codigo <> 0) then begin
        write('Ingrese el nombre del alumno'); 
        readln(alu.nombre);
        write('Ingrese el promedio del alumno'); 
        readln(alu.promedio);
    end;
 end;
 { declaración de variables del programa principal }
 var
 a : alumno;
 { cuerpo del programa principal }
 begin
     leer(a);
 end.
