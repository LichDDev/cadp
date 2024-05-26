program memoria;
type 
    datos = array [1..20] of integer;
    punt = ^datos;

procedure procesarDatos(v : datos; var v2 : datos);
var
    i, j : integer;
begin
for i := 1 to 20 do
    v2[21 - i] := v[i];
end;

var
    vect : datos;   {40 bytes}
    pvect : punt;  {4 bytes}
    i : integer; {2 bytes}
begin

for i:= 1 to 20 do. 
    vect[i] := i;
new(pvect);

for i:= 20 downto 1 do
    pvect^[i] := 0; 
procesarDatos(pvect^, vect);

writeln('fin');
end.
{
Responda: ¿cuánta memoria en total ocupa el programa al ejecutarse? Considere tanto variables estáticas
como dinámicas, parámetros y variables locales de los módulos.
a. Hasta la sentencia de la línea 18.   (la memoria total que ocupa hasta esta linea es de: 46 bytes)
b. Hasta la sentencia de la línea 20.   (la memoria total que ocupa hasta esta linea es de: 46 bytes)
c. Hasta la sentencia de la línea 23.   (la memoria total que ocupa hasta esta linea es de: 86 bytes)
d. Hasta la sentencia de la línea 11.   (la memoria total que ocupa hasta esta linea es de: 0 bytes)
e. Hasta la sentencia de la línea 25.   (la memoria total que ocupa hasta esta linea es de: 86 + 4 + (80 dudables a preguntar) bytes)
}