program Punto2;

type
    dias = 1..31;
    Tcasamiento = record
        mes : String;
        dia : dias;
        ano : integer;
    end;

procedure LeerCasamientos(var fechas : Tcasamiento);
begin
    write('ingrese el año del casamiento: ');
    readln(fechas.ano);
    if (fechas.ano <> 2020) then
    begin
        write('ingrese el dia del casamiento: ');
        readln(fechas.dia);
        write('ingrese el mes: ');
        readln(fechas.mes);
    end;
end;

procedure cantidadDurante(var casamiento : Tcasamiento;var cantD,CantM : integer);
begin
    if(casamiento.dia < 10) then
        cantD:=cantD +1;
    if(casamiento.mes= 'enero') or (casamiento.mes = 'febrero') or (casamiento.mes = 'marzo')then
        CantM:=CantM +1;
end;
var
    casamientos: Tcasamiento;
    cantCasDias: integer;
    cantCasVer: integer;
    cantCasamiento: integer;
begin
    cantCasDias:=0;
    cantCasVer:=0;
    cantCasamiento:=0;

    LeerCasamientos(casamientos);
    while(casamientos.ano <> 2020)do
    begin
        cantidadDurante(casamientos,cantCasDias,cantCasVer);
        cantCasamiento:= cantCasamiento + 1;
        LeerCasamientos(casamientos);
    end;
    writeln('la cantidad de casamientos realizados durante los meses de verano son: ',cantCasVer);
    writeln('la cantidad de casamientos realizados durante los primeros 10 dias de cada mes es: ',cantCasDias);
    writeln('la cantidad total de casamientos es: ',cantCasamiento);
end.

{a) Analizar y definir un tipo de dato adecuado para almacenar la información de la fecha de cada
casamiento.

b) Implementar un módulo que lea una fecha desde teclado y la retorne en un parámetro cuyo tipo es el
definido en el inciso a.

c) Implementar un programa que lea la fecha de todos los casamientos realizados en 2019. La lectura
finaliza al ingresar el año 2020, que no debe procesarse, e informe la cantidad de casamientos
realizados durante los meses de verano (enero, febrero y marzo) y la cantidad de casamientos
realizados en los primeros 10 días de cada mes. Nota: utilizar el módulo realizado en b)para la lectura
de fecha }
