program Punto7;

var
    nombre:string;
    P1,P2,U1,U2:string;
    tiempo:real;
    TiempM,TiempoM2:real;
    TiempMi,TiempoMi2:real;
    i: integer;
begin
  P1:='nadie';
  P2:='nadie';
  U1:='nadie';
  U2:='nadie';

  TiempM:=-1;
  TiempoM2:=-1;
  
  TiempMi:=999;
  TiempoMi2:=999;


  for i := 1 to 100 do
  begin
    write('ingrese el nombre del piloto: ');
    readln(nombre);
    write('ingrese el tiempo total que le tomo finalizar la carrera: ');
    readln(tiempo);
    //se calcula a los pilotos con mayor tiempo (ultimos)
    if(tiempo>TiempM)then
    begin
      TiempoM2:=TiempM;
      TiempM:=tiempo;

      U2:=U1;
      U1:=nombre;
    end  
    else
    begin
      if (tiempo>TiempoM2) and (tiempo<TiempM) then
      begin
        U2:=nombre;
        TiempoM2:=tiempo;
      end;
    end;
    //se calcula a los pilotos con menor tiempo( los primeros en cruzar)
    if(tiempo<TiempMi)then
    begin
      TiempoMi2:=TiempMi;
      TiempMi:=tiempo;

      P2:=P1;
      P1:=nombre;
    end  
    else
    begin
      if (tiempo<TiempoMi2) and (tiempo>TiempMi) then
      begin
        P2:=nombre;
        TiempoMi2:=tiempo;
      end;
    end;
  end;
  writeln('los nombres de los pilotos que finalizaron primero son: ', P1, ' y ', P2);  
  writeln('los nombres de los pilotos que finalizaron ultimos son: ',U1,' y ', U2);
end.
