program da;

type
    prueba = record
        hola: integer;
        pe:string[9];
        o:real;
    end;
    puntero = ^prueba;
var
    pu:puntero;

begin
    {writeln(sizeof(pu^.o), ' bytes');}
    writeln(sizeof(pu^.pe), ' bytes');
    writeln(sizeof(pu^.hola), ' bytes');

    writeln(sizeof(pu^), ' bytes');
end.

