program sumador;

type  
  vnums = array [1..10] of integer;
var
  numeros : vnums;
  i : integer;
begin
  for i:=1 to 10 do {primer bloque for}
    numeros[i] := i;

  for i := 2 to 10 do{segundo bloque for}
  begin
    numeros[i] := numeros[i] + numeros [i-1];
    write(' ',numeros[i]);
  end;

  for i:=1 to 9 do
  begin
    numeros[i+1] := numeros[i] + numeros [i+1];
    write(' ',numeros[i+1]);
  end;

end.

{
a. ¿Qué valores toma la variable numeros al finalizar el primer bloque for?
  A)toma los valores del 1 al 10 en sus respectivas posiciones.

b. Al terminar el programa, ¿con qué valores finaliza la variable números?
  B)Termina con los valores 1,3,6,10,15,21,28,36,45,55 <- se va sumando al anterior

c. Si se desea cambiar la línea 11 por la sentencia:
  for i:=1 to 9 do
  C) for i:=1 to 9 do
    begin
      numeros[i+1] := numeros[i] + numeros [i+1];
      write(' ',numeros[i+1]);
     end;

¿Cómo debe modificarse el código para que la variable números contenga los mismos valores que
en 1.b?

d. Qué valores están contenidos en la variable numeros si la líneas 11 y 12 se reemplazan por:
    for i:=1 to 9 do
    numeros[i+1] := numeros[i];
    D)termina con los valores 1,1,1,1,1,1,1,1,1,1}
