program Punto8;

{Realizar un programa que lea tres caracteres, e informe si los tres eran letras vocales o si al menos uno de
ellos no lo era. Por ejemplo:
○ Si se leen los caracteres “a e o”, deberá informar: Los tres son vocales
○ Si se leen los caracteres “z a g”, deberá informar: Al menos un carácter no era vocal}


var
  ca1: char;
  ca2: char;
  ca3: char;
  caracter: integer;
begin
    caracter:= 0;
    write('ingrese un caracter: ');
    readln(ca1);
    write('ingrese el segundo caracter: ');
    readln(ca2);
    write('ingrese el tercer caracter: ');
    readln(ca3);

    case ca1 of
        'a': caracter:= caracter+1;
        'e': caracter:= caracter+1;
        'i': caracter:= caracter+1;
        'o': caracter:= caracter+1;
        'u': caracter:= caracter+1;
    end;
    case ca2 of
        'a': caracter:= caracter+1;
        'e': caracter:= caracter+1;
        'i': caracter:= caracter+1;
        'o': caracter:= caracter+1;
        'u': caracter:= caracter+1;
    end;
    case ca3 of
        'a': caracter:= caracter+1;
        'e': caracter:= caracter+1;
        'i': caracter:= caracter+1;
        'o': caracter:= caracter+1;
        'u': caracter:= caracter+1;
    end;
    if (caracter=3) then
        write('todos los caracteres son vocales')
    else
    begin
        if(caracter>=1) then
            write('Al menos un carácter era vocal');
    end;          
end.
