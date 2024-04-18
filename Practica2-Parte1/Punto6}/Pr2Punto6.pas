program Punto6;


procedure numeroParAlto(num: integer ; var alto: integer);
begin
    write('ingrese un numero: ');
    readln(num);
    while(num>=0)do
    begin
        if (num>alto)and(num mod 2 = 0) then
            alto:=num;
        write('ingrese un numero: ');
        readln(num);
    end;
end;
var
    altoPar: integer;
    num: integer;
begin
    altoPar:=-1;

    numeroParAlto(num,altoPar);

    write('el numero par mas alto es: ',altoPar);
end.
