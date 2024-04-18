program Punto6;

{Realizar un programa que lea el número de legajo y el promedio de cada alumno de la facultad. La lectura
finaliza cuando se ingresa el legajo -1, que no debe procesarse. Por ejemplo: se lee la siguiente secuencia:
33423
8.40
19003
6.43
-1
En el ejemplo anterior, se leyó el legajo 33422, cuyo promedio fue 8.40, luego se leyó el legajo 19003, cuyo
promedio fue 6.43, y finalmente el legajo -1 (para el cual no es necesario leer un promedio).
Al finalizar la lectura, informar:
a. La cantidad de alumnos leída (en el ejemplo anterior, se debería informar 2).
b. La cantidad de alumnos cuyo promedio supera 6.5 (en el ejemplo anterior, se debería informar 1).
c. El porcentaje de alumnos destacados (alumnos con promedio mayor a 8.5) cuyo legajo sean menor
al valor 2500 (en el ejemplo anterior, se debería informar 0%).
}

var
    promedio: real;
    legajo: integer;
    cantAlumnos: integer;
    mayorP: integer;
    aplicados: integer;
begin
    legajo:=0;
    while(legajo<> -1)do
    begin
        write('ingrese el legajo del alumno: ');
        read(legajo);

        if (legajo<>-1) then 
        begin
            write('ingrese el promedio del alumno: ');
            read(promedio);
            cantAlumnos:= cantAlumnos +1;
            if(promedio>6.5) and(promedio<=8.5) then
                mayorP:= mayorP+1
            else
            begin
                if(promedio>8.5) and (legajo<2500) then
                    aplicados:= aplicados+1;
            end;
        end;
    end;
    writeLn('finalizo el programa y la cantidad de alumnos que fue registrada es: ', cantAlumnos);
    writeLn('la cantidad de alumnos que tienen un promedio mayor a 6.5 es: ', mayorP);
    writeLn('la cantidad de aplicados que tienen un promedio mayor a 8.5 es: ',((aplicados/cantAlumnos)*100):0:2,'%');
end.