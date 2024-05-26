program punteros;
type
    cadena = string[9];
    producto = record
        codigo: integer;
        descripcion: cadena;
        precio: real;
    end;

    puntero_producto = ^producto;

var
    p: puntero_producto;
    prod: producto;
begin

    writeln(sizeof(p), ' bytes');{4}
    writeln(sizeof(prod), ' bytes');{16 depende del compilador }

    new(p);
    writeln(sizeof(p), ' bytes');{4}

    p^.codigo := 1;
    p^.descripcion := 'nuevo producto';
    writeln(sizeof(p^), ' bytes');{16}

    p^.precio := 200;
    writeln(sizeof(p^), ' bytes');{16}

    prod.codigo := 2;
    prod.descripcion := 'otro nuevo producto';
    writeln(sizeof(prod), ' bytes');{16}
end.
{
    Memoria Estatica:
    p = 4 bytes
    prod = 16 bytes
    
    Memoria Dinamica:
    p^ = 16 bytes 

}