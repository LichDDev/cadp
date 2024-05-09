program Punto4;

type
    linea = record
        numeroTelefono : integer;
        cantMinutos : integer;
        cantMbMes: integer
    end;
    Tcliente = record
        codigoCliente : integer;
        cantidaLineas : integer;
        linea : linea;
    end;

procedure leerDatos(var cliente : Tcliente);
begin
    write('ingrese su codigo de cliente: ');
    readln(cliente.codigoCliente);
    write('ingrese la cantidad de lineas a su nombre: ');
    readln(cliente.cantidaLineas);
end;

procedure leerLineas(var cliente : Tcliente;var totalMb,totalMinutos : integer);
var
    i : integer;
begin
    for i := 1 to cliente.cantidaLineas do
    begin
        write('ingrese el numero de la linea: ');
        readln(cliente.linea.numeroTelefono);
        write('ingrese la cantidad total de minutos consumidos durante el mes: ');
        readln(cliente.linea.cantMinutos);
        write('ingrese la cantidad de MB consumidos durante el mes: ');
        readln(cliente.linea.cantMbMes);
        totalMb:= totalMb + cliente.linea.cantMbMes;
        totalMinutos:=totalMinutos + cliente.linea.cantMinutos;
    end;    
end;

procedure facturacion(totalMb,totalMinutos:integer; var facMb,facMinutos : real);
begin
    if (totalMb <>0) then
        facMb := totalMb * 1.35;
    if(totalMinutos<>0)then
        facMinutos := totalMinutos * 3.40;
end;
var
    cliente : Tcliente;
    i,totalMb,totalMinutos : integer;
    facMb,facMinutos:real;
begin

    for i := 1 to 3 do
    begin
        totalMb:=0;
        totalMinutos:=0;

        leerDatos(cliente);
        leerLineas(cliente,totalMb,totalMinutos);
        facturacion(totalMb,totalMinutos,facMb,facMinutos);
        writeln('el monto total a pagar por mb consumidos es: ',facMb:0:2);
        writeln('el monto total de minutos consumidos es: ',facMinutos:0:2);
        writeln('el monto total por todos los servicios es de: ',(facMb+facMinutos):0:2);
    end;
    

end.
