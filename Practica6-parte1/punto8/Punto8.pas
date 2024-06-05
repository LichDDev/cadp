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
    actual : lista;
    anterior : lista;
begin
    new(aux);
    aux^.num := v;
    aux^.sig := nil;

    if (L = nil) then
        L := aux
    else
    begin
        actual := L;
        anterior := L;
        while (actual <> nil) and (actual^.num < aux^.num) do
        begin
            anterior := actual;
            actual := actual^.sig;
        end;
        
        if (actual = L) then
        begin
            aux^.sig := L;
            L := aux;
        end
        else
        begin
            anterior^.sig := aux;
            aux^.sig := actual; 
        end;    
    end;
end;

procedure imprimirNumero(pri : lista); {C}
begin
    while(pri <> nil) do
    begin
        writeln(pri^.num);
        pri := pri^.sig;
    end;
end;

var
    pri ,ult: lista;
    valor : integer;
begin
    pri := nil;
    write('Ingrese un numero: ');
    readln(valor);
    while (valor <> 0) do begin
        armarNodo(pri, valor,ult);
        write('Ingrese un numero: ');
        readln(valor);
    end;
    imprimirNumero(pri);
end.