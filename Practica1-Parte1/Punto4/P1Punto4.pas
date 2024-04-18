program Punto4;

//Realizar un programa que lea un número real X. Luego, deberá leer números reales hasta que se ingrese
//uno cuyo valor sea exactamente el doble de X (el primer número leído).

var
  num1: real;
  aux: real;
begin
  read(num1);
  aux:= num1*2;
  while(num1<> aux)do
  begin
    write('ingrese un numero real: ');
    read(num1);
  end;
  write('el numero que escribio es el doble el primero.');
end.
