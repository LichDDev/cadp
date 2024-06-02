program da;

type
    prueba = record
        hola: real;
        pe:integer;
    end;

    puntero = record
        numero: prueba;
    end;

procedure a(var hola:puntero);
var
    p:prueba;
begin
    write('ingrese el valor: ');
    readln(p.hola);
    write('ingrese el valor: ');
    readln(p.pe);
    hola.numero:=p;
end;
var
    hola:puntero;
begin
    a(hola);
    writeln(hola.numero.pe);
end.

