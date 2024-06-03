program JugamosConListas;
type
    lista = ^nodo;
    nodo = record
        num : integer;
        sig : lista;
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

function maximo(L : lista):integer;
var
    max: integer;
begin
    max:=-1;
    while(L<>nil)do
    begin
        if (L^.num > max) then
            max:=L^.num;
        L:=L^.sig;
    end;
    maximo:=max;
end;

function minimo(L:lista):integer;
var
    min: integer;
begin
    min:=99;
    while(L<>nil)do
    begin
        if (L^.num < min) then
            min:=L^.num;
        L:=L^.sig;
    end;
    minimo:=min;
end;

function multiplos(L : lista;mul : integer):integer;
begin
    multiplos:=0;
    while(L<>nil)do
    begin
        if (L^.num mod mul = 0) then
            multiplos:=multiplos+1;
        L:=L^.sig;
    end;
end;

procedure picosDeLaLista(L:lista);
begin
    writeln('el numero maximo es : ',maximo(L));
    writeln('el numero minimo es : ',minimo(L));
end;

var
    pri : lista;
    valor : integer;
    multi,cant: integer;
begin
    pri := nil;
    cant := 0;

    write('ingresa un numero: ');
    readln(valor);
    while (valor <> 0) do 
    begin
        armarNodo(pri, valor);
        write('ingresa un numero: ');
        readln(valor);
    end;
    picosDeLaLista(pri);

    write('ingrese un numero para indicar los multiplos: ');
    readln(multi);  

    cant:=multiplos(pri,multi);
    writeln('la cantidad de multiplos es de: ',cant);
end.