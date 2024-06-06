program Punto5;

type
    Lista = ^nodo;

    descripcion = record
        patente : integer;
        anoFabricacion : integer;
        capacidad: real;
    end;

    camiones = array[1..100] of descripcion;

    viajes = record
        codigoViaje : integer;
        codigoCamion : integer;
        distanciaK : integer;
        ciudadDestino:string;
        anoViaje : integer;
        dni:integer;
    end;

    nodo = record
        datos : viajes;
        sig: Lista;
    end;

procedure extremos(P : viajes;var max,min,PatMax,PatMin : integer;cam : camiones);
begin
    if(P.distanciaK>max)then
    begin
        PatMax:=cam[P.codigoCamion].patente;
        max:=P.distanciaK;
    end;
    if(P.distanciaK<min)then
    begin
        PatMin:=cam[P.codigoCamion].patente;
        min:=P.distanciaK;
    end;
end;

procedure cantViajes(P:viajes; cam : camiones;var cantV : integer);
begin
    if(cam[P.codigoCamion].capacidad > 30.5) and ((P.anoViaje - cam[P.codigoCamion].anoFabricacion) > 5) then
        cantV:=cantV+1;
end;

procedure informar(L : Lista;cam : camiones);
var
    max,min : integer;
    PatMax,PatMin : integer;
    cantV:integer;
begin
    cantV:=0;
    max:=0;
    min:=99;

    while(L <> nil)do
    begin
        cantViajes(L^.datos,cam,cantV);
        extremos(L^.datos,max,min,PatMax,PatMin,cam);
        L:=L^.sig;
    end;
    writeln('la cantidad de viajes que se han realizado en camiones con capacidad mayor a 30,5 toneladas y poseen una antiguedad mayot a 5 años es de: ',cantV);
end;

procedure cargarDatos(var P : viajes);
begin
    write('ingrese el codigo de viaje: ');
    readln(P.codigoViaje);
    if (P.codigoViaje <>-1) then
    begin
        write('ingrese el codigo del camion: ');
        readln(P.codigoCamion);
        write('ingrese la distancia en kilometros recorrida: ');
        readln(P.distanciaK);
        write('ingrese la ciudad destino: ');
        readln(P.ciudadDestino);
        write('ingrese el año del viaje: ');
        readln(P.anoViaje);
        write('ingrese el dni del conductor: ');
        readln(P.dni);
    end;
end;

procedure armarNodo(var L :Lista; P :viajes);
var
    aux:Lista;
begin
    new(aux);
    aux^.datos := P;
    aux^.sig:=L;
    L:=aux;
end;

procedure crearLista(var L : Lista);
var
    P: viajes;
begin
    cargarDatos(P);
    while(P.codigoViaje <> -1)do
    begin
        armarNodo(L,P);
        cargarDatos(P);
    end;
end;

var
    L:Lista;
    cam:camiones;
begin
    crearLista(L);
    informar(L,cam);
end.
