program punto2;

type
    vAlumnos = array[1..500] of string;

procedure leerNombres(var alumnos:vAlumnos;var dimL:integer);
begin
    write('ingrese un nombre: ');
    readln(alumnos[dimL]);
    while(dimL<500)and(alumnos[dimL]<>'zzz')do
    begin
        dimL:=dimL+1;
        write('ingrese un nombre: ');
        readln(alumnos[dimL]);
    end;
end;

procedure eliminarNombre(var alumnos:vAlumnos;var dimL:integer;nombre:string);
var
    i,pos:integer;
begin
    for i := 1 to dimL do
    begin
        if(alumnos[i]=nombre)then
            pos:=i;    
    end;
    for i := pos to (dimL-1) do
    begin
        alumnos[i]:=alumnos[i+1];
    end;

    dimL:=dimL-1;
end;

procedure insertarNombre(var alumno:vAlumnos;var dimL:integer;nombre:string);
var
    i:integer;
    puede:boolean;
begin
    puede:=false;

    if(dimL<500)then
        puede:=true;

    if (puede) then
    begin
        for i := (dimL+1) downto 5 do
        begin
            alumno[i]:=alumno[i-1];
        end;
        alumno[4]:=nombre;
        dimL:=dimL+1;
    end;
end;

procedure agregarAlumno(var alumno:vAlumnos;var dimL:integer;nombre:string);
begin
    if((dimL+1)<=500)then
    begin
        dimL:=dimL+1;
        alumno[dimL]:=nombre;
    end;
end;

var
    alumnos:vAlumnos;
    dimL,i:integer;
    nombre:string;
begin
    dimL:=1;
    leerNombres(alumnos,dimL);

    write('ingrese un nombre a eliminar: ');
    readln(nombre);

    eliminarNombre(alumnos,dimL,nombre);

    write('ingrese un nombre a insertar: ');
    readln(nombre);

    insertarNombre(alumnos,dimL,nombre);

    write('ingrese un nombre a agregar: ');
    readln(nombre);

    agregarAlumno(alumnos,dimL,nombre);

end.