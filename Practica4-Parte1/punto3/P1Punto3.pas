program Punto3;

const
  dimF = 100;
type
  vec = array[1..dimF] of  integer;

procedure cargaDatos(var v:vec;var dimL:integer);
begin
  dimL:=1;
  v[dimL]:=dimL;

  while(v[dimL]<>0) and (dimL<dimF)do
  begin
    dimL:=dimL+1;
    v[dimL]:=dimL;
  end;
end;

procedure recorerN(v:vec;dimL:integer); {A}
var
  i:integer;
begin
  for i := 1 to dimL do
  begin
    write(v[i],' ');
  end;
end;

procedure recorerR(v:vec;dimL:integer); {B}
var 
  i:integer;
begin
  for i := dimL downto 1 do
  begin
    write(v[i],' ');
  end;
end;

procedure vecMitad(v:vec;dimL:integer); {C}
var
  i,i2:integer;
begin
  for i := (dimL div 2) downto 1 do
  begin
    write(v[i],' ');
  end;

  for i2 := ((dimL div 2)+ 1) to dimL do
  begin
    write(v[i],' ');
  end;
end;

procedure posicionesXY(v:vec;X,Y:integer); {D}
var
 i:integer;
begin
  if (X > Y) then
  begin
    for i := X downto Y do
    write(v[i],' ');
  end
  else
  begin
    if (Y>X) then
    begin
      for i := X to Y do
      write(v[i],' ');
    end;
  end;
end;

procedure rerealizadoA(v:vec;x,y:integer);{E}
var
  i:integer;
begin
  if(x > y)then
  begin
      for i := y to x do
      write(v[i],' ');
  end;
  else
  begin
    if (x<y) then
    begin
      for i := x to y do
      write(v[i],' ');
    end;
  end;
end;

procedure rerealizadoB(v:vec;x,y:integer);
var
  i:integer;
begin
  if(x > y)then
  begin
      for i := x downto y do
      write(v[i],' ');
  end;
  else
  begin
    if (x<y) then
    begin
      for i := y downto x do
      write(v[i],' ');
    end;
  end;
end;


var
  vector : vec;
  dimL:integer;
begin {Programa principal}
  cargaDatos(vector,dimL);
end.
