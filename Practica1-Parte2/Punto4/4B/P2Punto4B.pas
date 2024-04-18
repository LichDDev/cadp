program Punto4;


var
    num: integer;
    min,min2: integer;

begin
    write('ingrese un numero entero: ');
    readln(num);
    min:=999;
    min2:=999;
    while(num <>0)do
    begin
        if (num<min) then
        begin
            min2:=min;
            min:=num;
        end
        else
            if(num<min2) and (num>min)then
                min2:=num;
        write('ingrese un numero entero: ');
        readln(num);
    end;
    write('los dos numeros minimos son: ',min, ' y ', min2);
end.