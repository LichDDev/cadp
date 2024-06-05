program Punto6;

type
    lista = ^nodo;

    tipos = record
        cant:integer;
        nombre:string;
    end;
    son = array[1..7] of tipos;	

    sondas = record
        nombre : string;
        duracion : integer;
        costoConstruccion: real;
        costoMantenimiento : real;
        rango : integer;
    end;

    nodo = record
        info : sondas;
        sig: lista;                 
    end;

procedure crearRangos(var sonda : son);
var
    i: integer;
begin
    for i := 1 to 7 do
        sonda[i].cant := 0;
    
    sonda[1].nombre := 'radio';
    sonda[2].nombre := 'microondas';
    sonda[3].nombre := 'infrarojo';
    sonda[4].nombre := 'luz visible';
    sonda[5].nombre := 'ultravioleta';
    sonda[6].nombre := 'rayos X';
    sonda[7].nombre := 'rayos gamma';
end;

procedure cargarInformacion(var aux : sondas);
begin
    write('ingrese el nombre de la sonda: ');
    readln(aux.nombre);
    if (aux.nombre <> 'gaia') then
    begin
        write('ingrese la duracion de la sonda: ');
        readln(aux.duracion);
        write('ingrese el costo de construccion de la sonda: ');
        readln(aux.costoConstruccion);
        write('ingrese el costo de mantenimiento de la sonda: ');
        readln(aux.costoMantenimiento);
        write('ingrese el rango de la sonda: ');
        readln(aux.rango);
    end;
end;

procedure crearNodo(var L : lista; aux : sondas);
var
    aux2 : lista;
begin
    new(aux2);
    aux2^.info := aux;
    aux2^.sig := L;
    L := aux2;
end;

procedure armarLista(var L : lista;var cantS : integer);
var 
    aux : sondas;   
begin
    cargarInformacion(aux);
    while(aux.nombre <> 'gaia')do
    begin
        cantS := cantS + 1;
        crearNodo(L,aux);
        cargarInformacion(aux);
    end;
end;

procedure informar(cantSondas : integer;sonda : son);
var
    i: integer;
begin
    writeln('la cantidad de sondas cuya duracion es mayor a la duracion promedio es: ',cantSondas);
    writeln('la cantidad de sondas que realizaran estudios para cada rango del espectro electromagnetico es: ');
    for i := 1 to 7 do
        writeln(sonda[i].cant,' para el rango de: ',sonda[i].nombre);
end;

procedure maximos(L : lista;var nombreMax : string; var cantSondas : integer; promedioDuracion : real; promedioCostoConstruccion : real);
var
    max: real;
    maxCosto : real;
begin
    maxCosto := 0;
    cantSondas := 0;

    while(L <> nil)do{se tienen que reeedeclarar en el proceso obtener informacion}
    begin
        max := (L^.info.costoConstruccion + L^.info.costoMantenimiento);
        if (max > maxCosto) then
        begin
            nombreMax := L^.info.nombre;
            maxCosto := (L^.info.costoConstruccion + L^.info.costoMantenimiento);
        end;

        if (L^.info.duracion > promedioDuracion) then
        begin
            cantSondas := cantSondas + 1;
        end;

        if(L^.info.costoConstruccion > promedioCostoConstruccion)then
        begin
            writeln(L^.info.nombre);
        end;

        L := L^.sig;
    end;
end;

procedure obtenerInformacion(L : lista; cantS : integer);
var
    promedioDuracion : real;
    promedioCostoConstruccion : real;
    sonda : son;
    nombreMax: string;
    cantSondas : integer;
begin
    nombreMax := 'nada';
    crearRangos(sonda);
    promedioDuracion := 0;
    promedioCostoConstruccion := 0;

    while(L <> nil)do
    begin
        sonda[L^.info.rango].cant:= (sonda[L^.info.rango].cant + 1);

        promedioDuracion := promedioDuracion + L^.info.duracion;
        promedioCostoConstruccion := promedioCostoConstruccion + L^.info.costoConstruccion;

        L := L^.sig;
    end;

    promedioDuracion := (promedioDuracion / cantS);
    promedioCostoConstruccion := (promedioCostoConstruccion / cantS);
    
    maximos(L,nombreMax,cantSondas,promedioDuracion,promedioCostoConstruccion);
    informar(cantSondas,sonda);
    writeln('el nombre de la sonda mas costosa es: ',nombreMax);
end;

var
    L : lista;
    cantS : integer;
begin
    cantS := 0;
    L := nil;
    armarLista(L,cantS);
    obtenerInformacion(L,cantS);
end.
