program Punto6;

type

    Tmicroprocesadores = record
      marca : string;
      linea: string;
      cores:integer;
      ghz: real;
      transistores: integer;
    end;
procedure leerInformacion(var procesador: Tmicroprocesadores);
begin
  write('ingresa la marca del microprocesador: ');
  readln(procesador.marca);
  write('ingrese la linea del microporcesador: ');
  readln(procesador.linea);
  write('ingrese la cantidad de cores del microprocesador : ');
  readln(procesador.cores);
  if (procesador.cores<>0) then
  begin
    write('ingrese la velocidad del microprocesador : ');
    readln(procesador.ghz);
    write('ingrese la medida de los transistores del microprocesador : ');
    readln(procesador.transistores);
  end;
end;

procedure transiMayores(marcaActual: string;var cantM1,cantM2: integer;cantT:integer;var marcaM1,marcaM2: string);
begin
  if(cantT>cantM1)then
  begin
    cantM2:=cantM1;
    cantM1:=cantT;

    marcaM2:=marcaM1;
    marcaM1:=marcaActual;
  end
  else
  begin
    if(cantT>cantM2)then
      cantM2:=cantT;
      marcaM2:=marcaActual;
  end;
end;

procedure especi(procesador:Tmicroprocesadores;var cantMulti: integer);
begin
  if(procesador.cores > 2)and (procesador.transistores>= 22)then
    writeln(procesador.marca,' de la linea ',procesador.linea,'tiene mas de 2 core y transistores de mas de 22nm');
  if(procesador.marca = 'intel')or ( procesador.marca='AMD')then
  begin
    if(procesador.ghz >= 2)then
      cantMulti:=cantMulti+1;
  end;
end;

procedure informar(marcaM1,marcaM2 : string; cantMulti: integer);
begin
  writeln('las dos marcas con mayor cantidad de procesadores con transistores de 14nm: ',marcaM1,' y ',marcaM2);
  writeln('y la cantidad de procesadores multicores de intel y amd con velocidades de al menos 2Ghz es de: ',cantMulti);
end;
var
  procesador:Tmicroprocesadores;
  marcaActual : string;
  marcaM1,marcaM2 : string;
  cantT,cantM1,cantM2:integer;
  cantMulti,cantP:integer;
begin
  cantM1:=0;
  cantM2:=0;
  cantMulti:=0;
  cantP:=0;

  leerInformacion(procesador);
  while(procesador.cores <>0)do
  begin
    cantP:=cantP+1;
    cantT:=0;
    marcaActual:=procesador.marca;
    while(procesador.cores <> 0)and(procesador.marca = marcaActual)do
    begin
      especi(procesador,cantMulti);
      if(procesador.transistores = 14)then
        cantT:=cantT+1;
      leerInformacion(procesador);
    end;
    transiMayores(marcaActual,cantM1,cantM2,cantT,marcaM1,marcaM2);
  end;
  if(cantP <>0)then
    informar(marcaM1,marcaM2,cantMulti);

end.
