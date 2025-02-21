program Punto3;

type
    info = record
        nombre: string;
        nota: integer;
        prom: real;
        datos: ^integer;
    end;
    vector = array[1..80] of info;
var
    v: vector;
    i,cant: integer;
    e: info;
begin
    for i := 1 to 80 do
    begin
        read(e.nombre);
        read(e.nota);
        read(e.prom);
        if( i mod 2 = 0)then new(v[i].datos)
        else v[i].datos := nil;
    end;
    i := 0;
    while(i < 80)and(e.nombre <> 'ZZZ') do
    begin
        cant:=0;
        if(v[i].nota > 5)then cant:=cant+1;
        i:=i+1;
    end;
end.
