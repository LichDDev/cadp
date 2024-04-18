program Punto2;


var
    num,max,i,posi:integer;
begin
    max:=-999;
    posi:=0;
    for i := 1 to 10 do
    begin
        write('ingrese un numero: ');
        read(num);
        if (num>max) then
        begin
            max:=num;
            posi:=posi+1;    
        end
    end;
    write('el numero mas grande es: ',max,' y la posicion del numero es: ',posi);
end.
