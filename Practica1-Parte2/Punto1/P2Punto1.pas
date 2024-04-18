program Punto1;

var
    num: integer;
    resultado,i,M: integer;
begin
    resultado:= 0;
    for i:= 1 to 10 do
    begin
        write('ingrese un numero entero: ');
        read(num);
        resultado:= resultado + num;
        if (num>5) then
            M:=M+1;   
    end;
    write('la suma de todos los enteros es: ',resultado);
    write('la cantidad de numeros digitados mayores que 5 son: ',M);    
end.
