program Punto3;

//Realizar un programa que lea 3 números enteros y los imprima en orden descendente. Por ejemplo: si se
//ingresan los valores 4, -10 y 12, deberá imprimir: 12 4 -10

var
  num1: integer;
  num2: integer;
  num3: integer;

begin
    write('ingrese 3 numeros: ');
    read(num1);
    read(num2);
    read(num3);
    if (num1>num2) and (num1>num3) and (num2>num3) then
         write(num1 , num2 , num3)
    else
    begin
        if(num1>num2) and (num1>num3) and (num3>num2) then
            write(num1 , num3 , num2)
        else
            if(num2>num1) and (num2>num3) and (num1 > num3)then
                write(num2 , num1 , num3)
            else
                if(num2>num1) and (num2>num3) and (num3>num1) then
                    write(num2 , num3 , num1)
                else
                    if(num3>num1) and (num3>num2) and (num1>num2) then
                        write(num3 , num1 , num2)
                    else
                        write(num3 , num2 , num1)            
    end;
end.
