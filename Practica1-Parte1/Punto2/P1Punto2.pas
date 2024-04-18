program Punto2;

// Realizar un programa que lea un número real e imprima su valor absoluto. El valor absoluto de un número
// X, se escribe |X| y se define como:
// |X| = X cuando X es mayor o igual a cero
// |X| = -X cuando X es menor a cero

var
    numero: real;
begin
    write('escriba un numero: ');
    read(numero);
    if (numero>=0) then
        write('el valor absoluto de el numero es: ', numero:0:2)
    else
       write('el valor absoluto de el numero es: ',-numero:0:2);
end.
