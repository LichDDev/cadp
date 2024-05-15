program punto4;

type
    vector = array[1..100] of integer;

function posicion(v:vector; x:integer):integer; {A}
var
    i:integer;
begin
    for i := 1 to 100 do
    begin
        if (v[i] = x) then
            posicion:= i;
    end;
    posicion:= -1 ;
end;

procedure intercambio(var v:vector;x,y:integer); {B}
var
    aux: integer;
begin
    aux:=v[x];
    v[x]:=v[y];
    v[y]:=aux;
end;

function sumaVec(v : vector):real; {C}
var
    i:integer;
    suma:real;
begin
    suma:=0;
    for i := 1 to 100 do
        suma := v[i] + suma;
    sumaVec:=suma;
end;

function promedio(v : vector):real; {D}
var
    i:integer;
    suma:real;
begin
    suma:=0;
    for i := 1 to 100 do
        suma := v[i] + suma;
    promedio:=(suma/100);
end;

function elementoMaximo(v:vector):integer; {E}
var
    max,i,Posi:integer;
begin
    max:=0;
    for i := 1 to 100 do
    begin
        if(v[i]>max)then
        begin
            max:=v[i];
            Posi:= i;
        end;
    end;
    elementoMaximo:= posi;
end;

function elementoMinimo(v:vector):integer; {F}
var
    min,i,Posi:integer;
begin
    min:=-99;
    for i := 1 to 100 do
    begin
        if(v[i]<min)then
        begin
            min:=v[i];
            Posi:= i;
        end;
    end;
    elementoMinimo:= posi;
end;

var
    v: vector;
    x,y:integer;
    suma,prom:real;
    max,min,i:integer;
    posi:integer;
begin
    x:=4;
    y:=5;
    posi:=0;

    for i := 1 to 100 do
    begin
        v[i]:=i;
    end;

    writeln('la posicion del numero es : ',posicion(v,posi));
    intercambio(v,x,y);
    suma:=sumaVec(v);
    prom:=promedio(v);
    max:=elementoMaximo(v);
    min:=elementoMinimo(v);
end.
