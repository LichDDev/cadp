program Punto3;

type
    lista = ^nodo;

    fecha = record
        dia:integer;
        mes:string;
        ano:integer;
    end;

    remiseria = record
        numeroViaje : real;
        codigoAuto : integer;
        direccionOrigen:integer;
        direccionDestino:integer;
        kilometrosRecorridos:integer;
        fecha:fecha;
    end;

    nodo = record
        info:remiseria;
        sig:lista;
    end;

procedure cargarDatos(var P:remiseria);
begin
    write('ingrese el numero de viaje: ');
    readln(P.numeroViaje);
    write('ingrese el codigo del auto: ');
    readln(P.codigoAuto);
    write('ingrese la direccion de origen: ');
    readln(P.direccionOrigen);
    write('ingrese la direccion de destino: ');
    readln(P.direccionDestino);
    write('ingrese los kilometros recorridos: ');
    readln(P.kilometrosRecorridos);
    write('ingrese el mes: ');
    readln(P.fecha.mes);
    write('ingrese el año: ');
    readln(P.fecha.ano);
end;

procedure crearNodo(var L:lista;P:remiseria);
var
    aux:lista;
begin
    new(aux);
    aux^.info:=P;
    aux^.sig:=L;
    L:=aux;
end;

procedure maximoKilometros(P:remiseria;var cod1,cod2:integer;var max1,max2:integer);
begin
    if (P.kilometrosRecorridos > max1) then
    begin
        max2:=max1;
        cod2:=cod1;

        max1:=P.kilometrosRecorridos;
        cod1:=P.codigoAuto;
    end
    else
    begin
        if (P.kilometrosRecorridos > max2) then
        begin
            max2:=P.kilometrosRecorridos;
            cod2:=P.codigoAuto;
        end;
    end;
        
end;

procedure sublista(L:lista;P:remiseria);
var
    aux:lista;
    anterior,actual:lista;
begin
    new(aux);
    aux^.info:=P;
    aux^.sig:=nil;

    if(L=nil)then
        L:=aux
    else
    begin
        anterior:=L;
        actual:=L;
        while(actual<>nil)and(actual^.info.numeroViaje < aux^.info.numeroViaje)do
        begin
            anterior:=actual;
            actual:=actual^.sig;
        end;
        if(actual=L)then 
        begin
            aux^.sig:=L;
            L:=aux;
        end
        else
        begin
            anterior^.sig:=aux;
            aux^.sig:=actual;
        end;
    end;
end;

procedure crearLista(var L: lista;var cod1,cod2:integer;var max1,max2:integer);
var
    P:remiseria;
    codigoActual:integer;
begin
    cargarDatos(P);
    crearNodo(L,P);
    while(P.codigoAuto <> 0) do
    begin
        codigoActual:=P.codigoAuto;
        while(P.codigoAuto = codigoActual) do
        begin
            if(P.kilometrosRecorridos >=5)then
                sublista(L,P);

            maximoKilometros(P,cod1,cod2,max1,max2);
            cargarDatos(P);
            crearNodo(L,P);
        end;
    end;
end;


var
    L: lista;
    cod1,cod2:integer;
    max1,max2:integer;
begin
    max1:=0;
    max2:=0;

    crearLista(L,cod1,cod2,max1,max2);
    writeln('el codigo del auto con mas kilometros recorridos es: ',cod1,' y ',cod2,' kilometros recorridos');
end.
