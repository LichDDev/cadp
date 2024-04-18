program Punto5;

var
    num,total: integer;
    max,min:integer;
begin
    total:=0;
    max:=-1;
    min:=99;
    repeat
        write('ingrese un numero entero: ');
        readln(num);
        total:= total + num;
        if(num>max)then
            max:=num;
        if(num<min)then
            min:=num;    
    until (num=100);
    writeln('el numero minimo leido es: ', min);
    writeln('el numero maximo leido es: ',max);
    writeln('la suma total de todos los numeros digitados es: ',total);
end.
