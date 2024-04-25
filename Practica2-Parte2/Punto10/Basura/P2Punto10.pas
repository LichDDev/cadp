program Punto10;
{ENTENDI CUALQUIER COSA PERO COMO ME COSTO TIEMPO NO LO BORRO XD}
procedure informe(verificA,verificB,verificC:integer;cantidad:integer);
begin
  if(verificA <> cantidad)then
    writeln('no cumple con el patron A');
  if (verificB <> cantidad) then
    writeln('no comple con el patron B');
  if(verificC <=0 )then
    writeln('no cumple con el patron de caracteres especiales')
  else
  begin
    if(verificC>=1)then
      writeln('cumple con  el patro de caracteres especiales');
  end;
end;
procedure A(caracter:char;var verificA:integer;var cantidad:integer);
begin
  if (caracter = 'a')or(caracter='e')or(caracter='i')or(caracter='o')or(caracter='u') then
    verificA:= verificA + 1;

  if(verificA = cantidad)then
    writeln('cumple con el patron A');
end;
procedure B(caracter:char;var verificB:integer;var cantidad:integer);
begin
  if (caracter <>'a')and(caracter<>'e')and(caracter<>'i')and(caracter<>'o')and(caracter<>'u')and(caracter<>'#')and(caracter<>'$') then
    verificB:= verificB+1;
  if(verificB = cantidad)then
    writeln('cumple con el patron B');
end;
procedure Ca(caracter:char;var verificC:integer);
begin
  if(caracter = '$')or(caracter='#')then
    verificC:=verificC+1;
end;
var
  verificA,verificB,verificC:integer;
  i,cantidad:integer;
  caracter: char;
begin
  cantidad:=5;
  verificA:=0;
  verificB:=0;
  verificC:=0;

  for i := 1 to cantidad do
  begin
    write('ingrese un caracter: ');
    readln(caracter);
    A(caracter,verificA,cantidad);
    B(caracter,verificB,cantidad);
    Ca(caracter,verificC);
  end;
  informe(verificA,verificB,verificC,cantidad);
end.
