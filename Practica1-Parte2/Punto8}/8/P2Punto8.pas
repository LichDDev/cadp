program Punto8;

var
    i: integer;
    TotalV:integer;
    monto,MTotal:real;
begin
  TotalV:=0;
  MTotal:=0;

  for i := 1 to 31 do
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
    writeln('la cantidad de ventas del dia es: ', TotalV);
    TotalV:=0;
  end;
  writeln('el monto acumulado en ventas de todo el mes es: ',MTotal:0:2);
end.
