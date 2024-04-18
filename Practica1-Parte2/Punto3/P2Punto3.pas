program Punto3;

type 
  nota=1..10;

var
  N: nota;
  nombre: string;
  A7,A8: integer;
begin
  A7:= 0;
  A8:= 0;
  repeat
    write('ingrese el nombre del alumno: ');
    readln(nombre);
  
    write('ingrese la nota del alumno: ');
    readln(N);
    if(N>=8) then
      A8:=A8+1
    else
    begin
      if(N=7) then
        A7:= A7+1;
    end;
  until (nombre='Zidane Zinedine');
  writeln('la cantidad de alumnos con nota mayor a 8 o igual es: ', A8);
  writeln('la cantiad de alumnos con nota 7 es: ',A7);
end.
