program Principal;

type
    venta =  record
        numeroVenta: integer;
        cantProductos: integer;
        tipoPago: string;
    end;

    lista = ^nodo;
    nodo = record
        dato: venta;
        sig: lista;
    end;

procedure unirListas(var ult,L2: lista);
begin
    if (ult = nil) then
        ult:= L2
    else
        ult^.sig:= L2;
end;

procedure verificarDigitos(cant: integer; var ok: boolean);
var
    dig: integer;
    cantDig: integer;
begin
    cantDig:= 0;
    while (cant <> 0) and (cantDig <> 2) do
    begin
        dig:= cant mod 10;
        if (dig mod 2 = 0) then cantDig:=cantDig +1;
        cant:= cant div 10;
    end;
    if (cantDig = 2) then ok:= true
    else ok:= false;
end;

procedure agregarNodo(var L,ult: lista; v: venta);
var
    aux: lista;
begin
    new(aux);
    aux^.dato:= v;
    aux^.sig:=nil;
    if(L = nil) then
    begin
        L:= aux;
        ult:= aux;
    end
    else
    begin
        ult^.sig:= aux;
        ult:= aux;
    end;
end;

procedure generarLista(ventas:lista;var L: lista);
var
    ult: lista;
    L2: lista;
    ult2: lista;
    ok: boolean;
begin
    ult:= L;
    L2:= nil;
    ult2:= nil;
    ok:= false;

    while (ventas <> nil) do
    begin
        verificarDigitos(ventas^.dato.cantProductos, ok); //verificamos la cantidad de digitos pares
        if (ok) then
        begin
            if(ventas^.dato.tipoPago = 'tarjeta') then // agregamos a la lista segun el metodo de pago
                agregarNodo(L,ult,ventas^.dato)
            else if (ventas^.dato.tipoPago = 'efectivo') then
                agregarNodo(L2,ult2,ventas^.dato);
        end;
        ventas:= ventas^.sig;
    end;
    unirListas(ult,L2);
end;

var
    ventas: lista;
    L:lista;
begin
    ventas:= nil;
    L:= nil;
    cargarVentas(ventas); //se supone que esta cargado
    generarLista(ventas,L);
end.