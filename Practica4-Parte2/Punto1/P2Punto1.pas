program punto1;

type
    vNumeros = array[1..500] of integer;

procedure leerDatos(var vec : vNumeros;var dimL :integer);
begin
    write('ingrese un valor: ');
    readln(vec[dimL]);
    while(dimL<500)and(vec[dimL] <>0)do
    begin
        dimL:=dimL+1;
        write('ingrese un valor: ');
        readln(vec[dimL]);
    end;
end;

function encontrarValor(n:integer;vec:vNumeros;dimL:integer):boolean;
var
    i:integer;
begin
    for i:= 1 to dimL do
    begin
        if (n = vec[i]) then
        begin
            encontrarValor:=true;
        end
        else
        begin
            if(n <> vec[i]) and(i=dimL)then
            begin
                encontrarValor:=false;
            end;
        end;
    end;
end;

var
    vector: vNumeros;
    num : integer;
    dimL:integer;
begin
    dimL:= 1;

    leerDatos(vector,dimL);
    writeln('la dimencion del vector es de: ',dimL);
    
    write('ingrese un valor a encontrar: ');
    readln(num);

    writeln('el valor ',num,' es : ',encontrarValor(num,vector,dimL),' en el vector');

end.
