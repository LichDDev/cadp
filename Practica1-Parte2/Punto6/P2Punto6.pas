program Punto6;

type
    codigo =1..200;
var
    code,CB1,CB2:codigo;
    precio:real;
    bar1,bar2: real;
    par,i:integer;
begin
    CB1:=1;
    CB2:=1;
    par:=0;
    bar1:=999;
    bar2:=999;
    for i := 1 to 3 do
    begin
        writeln('ingrese el codigo del proucto: ');
        readln(code);
        writeln('ingrese el precio del producto: ');
        readln(precio);
        {decir que este algoritmo es dificil de comprender pero si lo miras con detenimiento esta bien}
        if(precio<=bar1) then
        begin
            bar2:=bar1;
            bar1:=precio;

            CB2:=CB1;
            CB1:=code;
        end
        else
        begin
            if(precio<bar2) and (precio>bar1) then
            begin
                CB2:=code;
                bar2:=precio;
            end;
        end;   
        if(precio>16) and ( (code Mod 2) = 0) then
            par:=par+1;
    end;
    writeln('la cantidad de productos de mas de 16 y con codigo par es: ',par);
    writeln('los codicos de los dos productos mas baratos son: ', CB1,' y ',CB2);
end.
