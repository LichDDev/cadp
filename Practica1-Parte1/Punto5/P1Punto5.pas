program Punto5;

{Modifique el ejercicio anterior para que, luego de leer el número X, se lean a lo sumo 10 números reales.
La lectura deberá finalizar al ingresar un valor que sea el doble de X, o al leer el décimo número, en cuyo
caso deberá informarse: No se ha ingresado el doble de X}

var
    num1: real;
    aux: real;
    contador : integer; 
begin
    write('ingrese un numero real: ');
    read(num1);
    contador:= 0;
    aux:= num1*2;
    while(num1<>aux) and (contador<>10)do
    begin
        contador:= contador+1;
        write('ingrese un numero real: ');
        read(num1);
    end;
    if (num1=aux) then
        write('el numero que se digito es el doble que el primero')
    else
        write('no se ha ingresado el doble del primer numero');    
end.
