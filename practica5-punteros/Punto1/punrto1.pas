program punteros;
type
    cadena = string[50];
    puntero_cadena = ^cadena;
var
    pc: puntero_cadena;
begin
    writeln(sizeof(pc), ' bytes');{4}
    new(pc);

    writeln(sizeof(pc), ' bytes');{4 tamaño del puntero}
    pc^:= 'un nuevo nombre';

    writeln(sizeof(pc), ' bytes');{4}

    writeln(sizeof(pc^), ' bytes');{51 tamabño del string}
    pc^:= 'otro nuevo nombre distinto al anterior';

    writeln(sizeof(pc^), ' bytes');{51}
end.
{
    Memoria Estatica:
    pc = 4 bytes
    
    Memoria Dinamica:
    pc^ = 51 bytes

}