program Punto4;


var
    num,i: integer;
    min,min2: integer;

begin
    min:=999;
    min2:=999;
    for i := 1 to 1000 do
    begin
        write('ingrese un numero entero: ');
        readln(num);
        if (num<min) then
        begin
            min2:=min;
            min:=num;
        end
        else
            if(num<min2) and (num>min)then
                min2:=num;
    end;
    write('los dos numeros minimos son: ',min, ' y ', min2);
end.
