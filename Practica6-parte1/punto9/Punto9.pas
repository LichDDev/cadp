program punto9;
type
    lista = ^nodo;
    nodo = record
        num : integer;
        sig : lista;
    end;

procedure imprimirNumero(pri : lista); 
begin
    while(pri <> nil) do
    begin
        writeln(pri^.num);
        pri := pri^.sig;
    end;
end;

function EstaOrdenado(L : lista):boolean;
var
    aux : lista;
begin
    EstaOrdenado := true;

    while (L <> nil) and (EstaOrdenado = true)do
    begin
        if (L^.sig <> nil) then
            aux := L^.sig;
        if (L^.num > aux^.num) then
            EstaOrdenado := false
        else
            EstaOrdenado := true;
        L := L^.sig;
    end;
end;

procedure eliminar(var L: lista; v: integer);
var 
    anterior, actual: lista;
begin
    actual := L;
    while (actual <> nil) and (actual^.num <> v) do
    begin
        anterior := actual;
        actual := actual^.sig;
    end;

    if (actual = L) then
    begin
        L := L^.sig;
        dispose(actual);
    end
    else
    begin
        anterior^.sig := actual^.sig;
        dispose(actual);
    end;
end;


procedure armarNodo(var L: lista; v: integer);
var
    aux : lista;
begin
    new(aux);
    aux^.num := v;
    aux^.sig := L;
    L := aux;
end;

procedure subList(L :lista; a,b : integer;var subLista : lista);
begin
    while (L <> nil) do
    begin
        if (L^.num < a) or (L^.num > b) then
        begin
            armarNodo(subLista, L^.num);
        end;
        L := L^.sig;
    end;
end;

var
    pri,subLista : lista;
    valor : integer;
    numEliminar : integer;
    a,b : integer;
begin
    pri := nil;
    subLista := nil;

    write('Ingrese un numero: '); 
    readln(valor);
    while (valor <> 0) do begin
        armarNodo(pri, valor);
        write('Ingrese un numero: ');
        readln(valor);
    end;

    write('Ingrese un numero para eliminar: ');
    readln(numEliminar);
    eliminar(pri, numEliminar);

    write('Ingrese un numero para sublista: ');
    readln(a);
    write('Ingrese un numero para sublista: ');
    readln(b);
    subList(pri, a, b, subLista);

    imprimirNumero(subList);

    writeln(EstaOrdenado(pri)); 

end.