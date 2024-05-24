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
    writeln(sizeof(prod), ' bytes');{24 nose por que }

    new(p);
    writeln(sizeof(p), ' bytes');{4}

    p^.codigo := 1;
    p^.descripcion := 'nuevo producto';
    writeln(sizeof(p^), ' bytes');{22}

    p^.precio := 200;
    writeln(sizeof(p^), ' bytes');{22}

    prod.codigo := 2;
    prod.descripcion := 'otro nuevo producto';
    writeln(sizeof(prod), ' bytes');{22}
end.