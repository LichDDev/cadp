program Punto6;

type
    are = array[1..12800] of Real;
    pu = ^ are;	
var
    puntero : pu;
begin
    new(puntero);
    writeln(sizeof(puntero^), ' bytes');
end.

{TIPO CANTIDAD DE BYTES
    Entero 2 bytes
    Real 4 bytes
    Char 1 byte
    String Tantos bytes como indique la longitud del String + 1
    Record La suma de las longitudes de los campos del registro
    Puntero 4 bytes
    Boolean 1 byte}