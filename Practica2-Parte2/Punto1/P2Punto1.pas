program Ejercicio3;
procedure suma(num1: integer; var num2:integer);
begin
    num2 := num1 + num2;
    num1 := 0;
end;
var
    i, x : integer;
begin

read(x); { leo la variable x }
for i:= 1 to 5 do
    suma(i,x);
writeln(x); { imprimo las variable x }
end.

{a).¿que imprime si se lee el valor 10 en la variable x?
A). imprime 25

b).que imprime si se lee el valor 10 en la variable x y se cambia el encabezado
del procedure por: 
    procedure suma(num1: integer; num2: integer)
B)imprimiria solo 10

c)que sucede si se cambia el encabezado del procedure por: 
    procedure suma(var num1: integer;var num2: integer)
C)el for quedaria en bucle ya que se reinicia el contador a 0 cada que entra en el 
procedure.}
