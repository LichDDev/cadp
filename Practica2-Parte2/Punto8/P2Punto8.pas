program Punto8;

function digitosImpares(Num:integer):integer;
var
    impares: integer;
    digitos: integer;
begin
    impares:=0;
    while(Num<>0)do 
    begin
        digitos:= Num mod 10;
        if (digitos mod 2 <> 0) then
            impares:= impares+1;
        Num:= Num div 10;
    end;
    digitosImpares:=impares;
end;
function sumaDigitos(Num:integer):integer;
var
    dig:integer;
    suma:integer;
begin
    suma:=0;
    while(Num<>0)do
    begin
        dig:=Num mod 10;
        if(dig mod 2 = 0)then
            suma:=suma+dig;
        Num:=Num div 10;
    end;
    sumaDigitos:=suma;
end;
var
    numero: integer;
begin
    write('ingresa un numero: ');
    readln(numero);

    while(numero <> (12345))do
    begin
        writeln('la cantidad de digitos impares del numero es: ',digitosImpares(numero));
        writeln('y la suma de digitos pares es: ',sumaDigitos(numero));

        write('ingresa un numero: ');
        readln(numero);
    end;

end.
