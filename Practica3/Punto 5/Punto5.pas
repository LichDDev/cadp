program Punto5;

type
    Tautos = record
        marca : string;
        modelo :string;
        precio : real;  
    end;
procedure leerDatos(var autos:Tautos);
begin
    write('ingrese la marca del auto: ');
    readln(autos.marca);
    if (autos.marca<>'zzz') then
    begin
         write('ingrese el modelo del auto: ');
        readln(autos.modelo);
        write('ingrese el precio del auto: ');
        readln(autos.precio);
    end;
        
end;
procedure autoCaro(autos: Tautos;var precioM: real;var marcaM,ModeloM: string);
begin
    if (autos.precio> precioM) then
    begin
        precioM:=autos.precio;
        marcaM:=autos.marca;
        ModeloM:=autos.modelo;
    end;    
end;
var
    autos : Tautos;
    marcaActual : string;
    precioM,Promedio : real;
    marcaM,ModeloM: string;
    cantMarca: integer;
begin
    precioM:=0;

    leerDatos(autos);
    while(autos.marca <> 'zzz') do 
    begin
        cantMarca:=0;
        marcaActual:= autos.marca;
        promedio:=0;

        while(autos.marca = marcaActual)and (autos.marca <>'zzz')do
        begin

            cantMarca:=cantMarca +1;

            Promedio:=Promedio + autos.precio;
            autoCaro(autos,precioM,marcaM,ModeloM);
            leerDatos(autos);
            if (autos.marca <> marcaActual) then
                writeln('el promedio de la marca: ',marcaActual,'es de : ',(promedio /cantMarca):0:2 );
        end;
    end;
    writeln('la marca y modelo del auto mas caro es: ',marcaM,' ',ModeloM);

end.
