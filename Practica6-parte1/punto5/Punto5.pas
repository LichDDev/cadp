program Punto5;

type
    lista = ^nodo;

    producto = record
        codigo : integer;
        descripcion : string;
        stockActual: integer;
        stockMinimo : integer;
        precio : real;
    end;

    nodo = record
        info : producto;
        sig: lista; 
    end;

procedure cargaInfo(var prod : producto);
begin
    write('ingrese el codigo del producto: ');
    readln(prod.codigo);
    if (prod.codigo <> -1) then
    begin
        write('ingrese la descripcion del producto: ');
        readln(prod.descripcion);
        write('ingrese el stock actual: ');
        readln(prod.stockActual);
        write('ingrese el stock minimo: ');
        readln(prod.stockMinimo);
        write('ingrese el precio del producto: ');
        readln(prod.precio);
    end;
end;

procedure armarNodo(var L:lista;data:producto);
var
    aux:lista;
begin
    new(aux);
    aux^.info:=data;
    aux^.sig:=L;
    L:=aux;
end;

procedure armarLista(var L:lista);
var
    data:producto;
begin
    cargaInfo(data);
    while(data.codigo <> -1)do
    begin
        armarNodo(L,data);
        cargaInfo(data);
    end;
end;

procedure digitosPares(L:lista);
var
    dig,num:integer;
    cant:integer;
begin
    cant:=0;

    num:=L^.info.codigo;
    while(num<>0)do
    begin
        dig:=num Mod 10;

        if(dig mod 2 = 0) then
            cant:=cant+1;
        num:=num div 10;
    end;
    if(cant >= 3)then
        writeln(L^.info.descripcion);
end;

procedure minimos(L:lista;var cod1,cod2: integer;var min1,min2:real);
begin
    if(L^.info.precio<min1)then
    begin
        min2:=min1;
        min1:=L^.info.precio;

        cod2:=cod1;
        cod1:=L^.info.codigo;
    end
    else
    begin
        if(L^.info.precio<min2)then
        begin
            min2:=L^.info.precio;
            cod2:=L^.info.codigo;
        end;
    end;
end;

procedure obtencionDatos(L:lista;var porcentaje : real);
var
    cod1,cod2:integer;
    min1,min2:real;
    cant:integer;
    cantTotal: integer;
begin
    cant:=0;
    cantTotal:=0;
    min1:=99;
    min2:=99;
    cod1:=0;
    cod2:=0;
    
    while(L<>nil)do
    begin
        if(L^.info.stockActual < L^.info.stockMinimo)then
            cant:=cant+1;
        cantTotal:=cantTotal+1;

        digitosPares(L);
        minimos(L,cod1,cod2,min1,min2);

        L:=L^.sig;
    end;

    porcentaje:= ((cant / cantTotal)*100);
    writeln('el porcentaje de productos con stock actual por debajo de su stock minimo es de: ',porcentaje:0:2,'%');
    writeln('el codigo de los dos productos mas economicos son: ',cod1,' y ',cod2);
end;

var
    listaProductos : lista;
    porcentaje: real;
begin
    armarLista(listaProductos);
    obtencionDatos(listaProductos,porcentaje);
end.