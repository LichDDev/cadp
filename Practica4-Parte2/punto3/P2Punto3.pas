program Punto3;

type
    dias = 1..31;
    viajes = record
        dias : dias;
        monto : real;
        distancia : real;
    end;

    vViajes = array [1..200] of viajes;
    dias = array[1..31] of integer;

procedure leerViajes(var viaje: vViajes;var dimL:integer);
begin
    write('ingrese la distancia recorrida del viaje: ');
    readln(viaje[dimL].distancia);
    if (viaje[dimL].distancia <> 0) then
    begin
        write('ingrese el monto pagado por el viaje: ');
        readln(viaje[dimL].monto);

        write('ingrese el dia del viaje: ');
        readln(viaje[dimL].dias);
    end;
    while(viaje[dimL].distancia <> 0) do
    begin
        dimL:=dimL+1;
        
        write('ingrese la distancia recorrida del viaje: ');
        readln(viaje[dimL].distancia);

        if (viaje[dimL].distancia <> 0) then
        begin
            write('ingrese el monto pagado por el viaje: ');
            readln(viaje[dimL].monto);

            write('ingrese el dia del viaje: ');
            readln(viaje[dimL].dias);
        end;
    end;   
end;

procedure infoViajes(viaje: vViajes;dimL:integer;var promedio:real;cantDias : dias);
var
    menorDinero: real;
    i: integer;
    diaM: integer;
    distanciaM: real;
begin
    menorDinero:=-999;

    for i := 1 to dimL do
    begin
        promedio:= promedio + viaje[i].monto;
        if (viaje[i].monto < menorDinero) then
        begin
            menorDinero:= viaje[i].monto;
            diaM:= viaje[i].dias;
            distanciaM:= viaje[i].distancia;
        end;
        cantDias[viaje[i].dias] := cantDias[viaje[i].dias] + 1;
    end;
    promedio:= promedio/dimL;

    writeln('el monto promedio de viajes realizados es : ',promedio:0:2);
    writeln('el dia que se realizo menos dinero es: ',diaM,' y la distancia recorrida fue: ',distanciaM, 'km');

end;


var
    viaje: vViajes;
    dimL: integer;
    promedio: real;
    cantDias: dias;
begin
    promedio:=0;
    dimL:=0;
    leerViajes(viaje,dimL);

    infoViajes(viaje,dimL,promedio,cantDias);
end.