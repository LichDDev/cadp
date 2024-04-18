program Punto9;

{Realizar un programa que lea un carácter, que puede ser “+” (suma) o “-” (resta); si se ingresa otro carácter,
debe informar un error y finalizar. Una vez leído el carácter de suma o resta, deberá leerse una secuencia
de números enteros que finaliza con 0. El programa deberá aplicar la operación leída con la secuencia de
números, e imprimir el resultado final.
Por ejemplo:
○ Si se lee el carácter “-” y la secuencia 4 3 5 -6 0 , deberá imprimir: 2 (4 – 3 – 5 - (-6) )
○ Si se lee el carácter “+” y la secuencia -10 5 6 -1 0, deberá imprimir: 0 (-10 + 5 + 6 + (-1))}

var
    signo: char;
    N1: integer;
    resultado: integer;
begin
    write('ingrese el caracter + o -: ');
    read(signo);

    N1:=1;
    resultado:=0;
    if (signo = '+') or (signo = '-') then
    begin
        if(signo= '+') then
        begin
            while(N1 <> 0)do
            begin
                write('ingrese un numero: ');
                readln(N1);
                resultado:= N1 + resultado;
            end;
            write('el resultado de la suma es: ', resultado);
        end
        else
        begin
            write('ingrese un numero: ');
            readln(N1);
            resultado:= resultado + N1;
            while(N1 <> 0)do
            begin
                write('ingrese un numero: ');
                readln(N1);
                resultado:=(resultado) - (N1);
            end;
            write('el resultado de la resta es: ', resultado); 
        end;
    end
    else
        write('error no se a ingresado un signo valido.');
end.
