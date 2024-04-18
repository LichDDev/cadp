program Punto4;


var
    num: integer;
    min,min2: integer;

begin
    min:=999;
    min2:=999;
    repeat
        write('ingrese un numero entero: ');
        readln(num);
        if (num<min) then
        begin
            min2:=min;
            min:=num;
        end;
    until (num=0);
    write('los dos numeros minimos son: ',min, ' y ', min2);
end.