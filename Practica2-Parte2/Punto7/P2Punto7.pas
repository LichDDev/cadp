program Punto7;

procedure digitosSuma(numero: integer;var cantDigitos:integer;var suma:integer);
var
    digi: integer;
begin
    digi:=0;
    while(numero<>0) do
    begin
        digi:= numero mod 10;
        cantDigitos:= cantDigitos + 1;
        suma:=suma + digi;
        numero:=numero div 10;
    end;
end;
var
    numero:integer;
    cantDigitos: integer;
    suma: integer;
begin
    cantDigitos:=0;
    repeat
        suma:=0;
        write('ingrese un numero: ');
        readln(numero);
        digitosSuma(numero,cantDigitos,suma);
    until (suma=10);

    writeln('la cantidad de digitos del entero es: ',cantDigitos);
end.
