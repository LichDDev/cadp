program Punto5;

function mayorQue(numA,numB : integer):boolean;
begin
    if(numB = numA * 2)then
        mayorQue := true
    else
        mayorQue:= false;
end;
var
    numA,numB: integer;
    totalPares: integer;
    cantDoble: integer;
begin
    totalPares:=0;
    cantDoble:=0;
    write('ingrese un numero: ');
    readln(numA);
    write('ingrese un segundo numero: ');
    readln(numB);

    while(numA <> 0) and (numB <> 0)do
    begin
        totalPares:= totalPares + 1;
        if(mayorQue(numA,numB))then
        begin
            writeln('num B es el doble de numA');
            cantDoble:= cantDoble + 1;
        end
        else
            writeln('num B no es el doble de numA');
        write('ingrese un numero: ');
        readln(numA);
        write('ingrese un segundo numero: ');
        readln(numB);
    end;
    writeln('la cantidad de pares ingresados es: ',totalPares);
    writeln('la cantidad de numeros B que son el doble de A son: ',cantDoble);
end.
