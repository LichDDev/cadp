program Punto2;

type
    lista = ^empresa;

    poliza = array[1..6] of real;

    code = 1..6;
    cliente = record
        codigoCliente : integer;
        dni : integer;
        nombre : string;
        apellido : string;
        codigoPoliza : code;
        montoBasico : real;
    end;

    empresa = record
        info : cliente;
        sig : lista;
    end;
procedure inicializarPoliza(var P : poliza);
var
    i : integer;
begin
    for i := 1 to 6 do
    begin
        write('ingrese el valor del monto extra para cada poliza: ');
        readln(P[i]);
    end;
end;

procedure cargarDatos(var P : cliente);
begin
    write('ingrese el codigo de cliente: ');
    readln(P.codigoCliente);
    write('ingrese el dni: ');
    readln(P.dni);
    write('ingrese el nombre: ');
    readln(P.nombre);
    write('ingrese el apellido: ');
    readln(P.apellido);
    write('ingrese el codigo de poliza: ');
    readln(P.codigoPoliza);
    write('ingrese el monto basico: ');
    readln(P.montoBasico);
end;

procedure armarNodo(var L : lista; P : cliente);
var
    aux : lista;
begin
    new(aux);
    aux^.info := P;
    aux^.sig := L;
    L := aux;
end;

procedure crearLista(var L : lista);
var 
    P : cliente;
begin
    repeat
        cargarDatos(P);
        armarNodo(L, P);
    until (P.codigoCliente = 1122);
end;

procedure descomponerDni(P : cliente);
var
    digi : integer;
    cant : integer;
begin
    cant := 0;

    while(P.dni <> 0) do
    begin
        digi := P.dni mod 10;
        if (digi = 9) then
            cant := cant + 1;

        P.dni := P.dni DIV 10;
    end;
    if (cant >=2) then
    begin
        writeln('el nombre y apellido del cliente es: ',P.nombre,' ',P.apellido);
    end;
end;

procedure informar(L : lista;extra : poliza);
begin
    while(L <> nil) do
    begin
        descomponerDni(L^.info);

        writeln('el codigo de cliente es: ',L^.info.codigoCliente);
        writeln('el dni es: ',L^.info.dni);
        writeln('el nombre es: ',L^.info.nombre);
        writeln('el apellido es: ',L^.info.apellido);
        writeln('el codigo de poliza es: ',L^.info.codigoPoliza);
        writeln('el monto completo que paga mensualmente por su seguro es: ',(L^.info.montoBasico + extra[L^.info.codigoPoliza]):0:2, ' pesos');
        L := L^.sig;
    end;
end;

var
    L : lista;
    extra : poliza;
begin
    inicializarPoliza(extra);
    crearLista(L);
    informar(L,extra);
end.