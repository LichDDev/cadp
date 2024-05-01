program Punto1;
type
    str20 = string[20];
    alumno = record
        codigo : integer;
        nombre : str20;
        promedio : real;
end;
procedure leer(var alu : alumno);
begin
    write('Ingrese el codigo del alumno: ');
    readln(alu.codigo);
    if (alu.codigo <> 0) then 
    begin
        write('Ingrese el nombre del alumno: '); 
        readln(alu.nombre);
        write('Ingrese el promedio del alumno: '); 
        readln(alu.promedio);
    end;
end;

var
    a : alumno;
    mejorA : alumno;
    cant:integer;
begin
    cant:=0;
    mejorA.promedio:=1;

    leer(a);

    while(a.codigo<>0)do
    begin
        if(a.promedio>mejorA.promedio)then
            mejorA:=a;
        cant:=cant+1;
        leer(a);
    end;
    writeln('la cantidad de alumnos leidos es de: ',cant);
    writeln('el alumno que tiene el mayor promedio es: ',mejorA.nombre);
end.

{a)_ Completar el programa principal para que lea información de alumnos (código, nombre, promedio) e
informe la cantidad de alumnos leídos. La lectura finaliza cuando ingresa un alumno con código 0, que
no debe procesarse. Nota: utilizar el módulo leer. (completado)

b)_ Modificar al programa anterior para que, al finalizar la lectura de todos los alumnos, se informe
también el nombre del alumno con mejor promedio. (completado)}