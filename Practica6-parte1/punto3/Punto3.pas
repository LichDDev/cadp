program JugamosConListas;
type
    lista = ^nodo;
    nodo = record
        num : integer;
        sig : lista;
    end;

procedure armarNodo(var L: lista; v: integer;var ult:lista);
var
    aux : lista;
begin
    new(aux);
    aux^.num:=v;
    aux^.sig:=nil;
    
    if (L=nil) then
        L:=aux
    else
        ult^.sig:=aux;
    ult:=aux;

end;

procedure imprimirNumero(pri : lista);
begin
    while(pri <> nil) do
    begin
        writeln(pri^.num);
        pri := pri^.sig;
    end;
end;

var
    pri,ult : lista;
    valor : integer;
begin
    pri := nil;
    write('ingrese un numero: ');
    readln(valor);
    while (valor <> 0) do 
    begin
        armarNodo(pri, valor,ult);
        write('ingrese un numero: ');
        readln(valor);
    end;
    imprimirNumero(pri);
end.