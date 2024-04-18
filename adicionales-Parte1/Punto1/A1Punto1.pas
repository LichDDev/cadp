program Punto1;

var
  code,codeM: integer;
  cantI,cantM,i: integer;
  montoProm,monto,MontoM: real;
begin
  montoProm:=0;
  cantM:=0;
  MontoM:=-1;

  repeat
    write('ingresa el codigo de la empresa: ');
    readln(code);
    write('ingresa la cantidad de inversiones: ');
    readln(cantI);

    for i := 1 to cantI do
    begin
      write('ingresa el monto de la inversion: ');
      readln(monto);
      montoProm := montoProm + monto;
    end;  
    if (montoProm>50000) then
      cantM:= cantM +1;
    writeln('el promedio de las inversiones es: ',montoProm/cantI);
    if ( MontoM < montoProm) then
    begin
      MontoM:= montoProm;
      codeM:= code;
    end;  
  until ( code = 100);

  writeln('la empresa ',codeM,' es la que mayor dinero posee invertido: ',MontoM);
  writeln('hay ',cantM,' empresas con inversiones por mas de 50k');
end.
