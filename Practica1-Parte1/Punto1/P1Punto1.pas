program punto1;

//Realizar un programa que lea 2 números enteros desde teclado e informe en pantalla cuál de los dos
//números es el mayor. Si son iguales debe informar en pantalla lo siguiente:Los números leídos son iguales

var
  num1: integer;
  num2: integer;

begin
    write('ingrese el primer numero: ');
    read(num1);
    write('ingrese el segundo numero: ');
    read(num2);

    if (num1>num2) then
        write('el primer numero es mayor')
    else
    begin
        if(num1<num2) then
            write('el segundo numero es mayor')
        else
            write('son iguales')    
    end;    
end.
