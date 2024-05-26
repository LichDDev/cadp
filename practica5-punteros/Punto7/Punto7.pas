program Punto7;

type
  nCiudad = String[50];
  puntero = ^nCiudad;	

  ciudades = array[1..2500] of puntero;

procedure reservaMemoria(var city : ciudades);{II}
var
  i : integer;
begin
  for i := 1 to 2500 do
  begin
    new(city[i]); {(ii) la cantidad de memoria Dinamica reservada total es de 127,500 bytes}
  end;	
end;

procedure leerNombres(var city:ciudades);
var 
  i : integer;
begin
  for i := 1 to 2500 do
  begin
    write('ingrese el nombre de la ciudad: ');
    readln(city[i]^);
  end;
end;

var
  city : ciudades;
begin
  {I) el tamaño de la variable city es de 10,000 bytes de memoria estatica}

  reservaMemoria(city);
  leerNombres(city);

end.

{TIPO CANTIDAD DE BYTES
    Entero 2 bytes
    Real 4 bytes
    Char 1 byte
    String Tantos bytes como indique la longitud del String + 1
    Record La suma de las longitudes de los campos del registro
    Puntero 4 bytes
    Boolean 1 byte
}