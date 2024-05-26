program da;

type
    prueba = record
        hola: real;
        pe:string[9];
    end;
    puntero = ^prueba;
var
    pu:puntero;
    hola:real;
begin
    writeln(sizeof(pu), ' bytes');{4}
    new(pu);
    writeln(sizeof(pu), ' bytes');{4}
    writeln(sizeof(pu^), ' bytes');{51}

    writeln(sizeof(pu^.hola), ' bytes');{8}

    writeln(sizeof(pu^.pe), ' bytes');{51}
end.

