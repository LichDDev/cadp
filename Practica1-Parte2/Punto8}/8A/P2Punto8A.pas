program Punto8;

var
    i,DiaM,dia: integer;
    TotalV,cantV:integer;
    monto,MTotal:real;
begin
  dia:=0;
  DiaM:=0;
  cantV:=-1;  
  TotalV:=0;
  MTotal:=0;

  for i := 1 to 3 do
  begin
    repeat
      write('ingrese el monto de la venta: ');
      readln(monto);
      if(monto<> 0) then
      begin
        TotalV:= TotalV +1;
        MTotal:=MTotal + monto;
      end;
    until (monto=0);
    dia:= dia + 1;

    if(TotalV>cantV)then
      DiaM:=dia;
      cantV:=TotalV;

    writeln('la cantidad de ventas del dia es: ', TotalV);
    TotalV:=0;
  end;
  writeln('el dia en que se realizo mas ventas fue el dia: ', DiaM);

  writeln('el monto acumulado en ventas de todo el mes es: ',MTotal:0:2);
end.