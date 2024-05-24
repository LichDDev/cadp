program A;
type
    cadena = string[50];
    puntero_cadena = ^cadena;
var
    pc: puntero_cadena;
begin
    pc^:= 'un nuevo texto';
    new(pc);
    writeln(pc^);{nada por que no hay nada definido}
end.