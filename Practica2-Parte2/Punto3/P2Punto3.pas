program ejercicio5;
 { suma los números entre a y b, y retorna el resultado en c }

procedure sumar(a, b, c : integer); //falta un ;
var
  suma : integer;
begin
    for i := a to b do //falta declarara la variable i
        suma := suma + i;
    c := c + suma; //no se retorna el resultado en c por que no es de salida
end;
var
    result : integer;
begin
    result := 0;
    readln(a); 
    readln(b);
    sumar(a, b, 0); //no se declararon la variable a,b y para que retorne c tiene que ser por referencia
    write(‘La suma total es ‘,result);
    { averigua si el resultado final estuvo entre 10 y 30}
    ok := (result >= 10) or (result <= 30); //ok tampoco esta declarado
    if (not ok) then
        write (‘La suma no quedó entre 10 y 30’);
end.