program Punto6;

procedure cargaDatos(var codigo: integer; var precio:real ; var tipo : string );
begin 
  write('ingrese el codigo del producto: ');
  readln(codigo);
  write('ingrese el tipo de producto: ');
  readln(tipo);
  write('ingrese el precio del producto: ');
  readln(precio);
end;
procedure productosBaratos(codigo:integer;var codeA,codeB : integer; precio: real; var precioM1,precioM2: real );
begin
  if (precio<precioM1) then
  begin
    precioM2:=precioM1;
    precioM1:=precio;

    codeB:=codeA;
    codeA:=codigo;
  end
  else
  begin
    if(precio<precioM2)then
    begin
      precioM2:=precio;
      codeB:=codigo;
    end;
  end;

    
end;
procedure pantalonCaro(code : integer ; precio : real; tipo : string; var codeP : integer; var precioP : real);
begin
  if(tipo = 'pantalon') and (precio>precioP)then
  begin
    precioP:=precio;
    codeP:=code;
  end;
end;
var
  i,code,codeA,codeB,codePant: integer;
  precio,Promedio,precioM1,precioM2,precioP: real;
  tipo : string;
  cantPro: integer;
begin
  Promedio:=0;
  precioM1:=999;
  precioM2:=999;
  precioP:=-1;
  write('ingrese la cantidad de productos: ');
  readln(cantPro);

  for i := 1 to cantPro do
  begin
    cargaDatos(code,precio,tipo);
    Promedio:=Promedio + precio;
    productosBaratos(code,codeA,codeB,precio,precioM1,precioM2);
    pantalonCaro(code,precio,tipo,codePant,precioP);
  end;

  writeln('el codigo de los dos productos mas baratos es: ',codeA,' y ',codeB);
  writeln('el codigo del pantaloon mas caro es: ',codePant);
  writeln('el promedio de los precios es de: ', (promedio / cantPro):0:2);
end.
