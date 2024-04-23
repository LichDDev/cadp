program Punto9;

procedure leerAlu(var NumeroI:integer;var apellido:string;var nombre:string);
begin
    write('ingresa el numero de inscripcion: ');
    readln(NumeroI);
    write('ingresa el apellido del alumno: ');
    readln(apellido);
    write('ingresa el nombre del alumno: ');
    readln(nombre);
end;
procedure alumnoNumeroM(NumeroI:integer;apellido:string ; var NumM1,NumM2 : integer;var ApellM1,ApellM2:string);
begin
    if (NumeroI>NumM1 ) then
    begin
        NumM2:=NumM1;
        NumM1:=NumeroI;

        ApellM2:=ApellM1;
        ApellM1:=apellido;
    end
    else
    begin
        if(NumeroI>NumM2)then
        begin
            NumM2:=NumeroI;
            ApellM2:=apellido;
        end;
    end;
end;
procedure alumnosNumeroMenor(NumeroI:integer;apellido:string ; var NumMe1,NumMe2 : integer;var ApellMe1,ApellMe2:string);
begin
    if (NumeroI<NumMe1 ) then
    begin
        NumMe2:=NumMe1;
        NumMe1:=NumeroI;

        ApellMe2:=ApellMe1;
        ApellMe1:=apellido;
    end
    else
    begin
        if(NumeroI<NumMe2)then
        begin
            NumMe2:=NumeroI;
            ApellMe2:=apellido;
        end;
    end;
end;
var
    nombre,apellido: string;
    NumeroI: integer;
    NumM1,NumM2,NumMe1,NumMe2: integer;
    ApellM1,ApellM2,ApellMe1,ApellMe2: string;
begin
    NumM1:=-1;
    NumM2:=-1;
    NumMe1:=999;
    NumMe2:=999;

    repeat
        leerAlu(NumeroI,apellido,nombre);
        alumnosNumeroMenor(NumeroI,apellido,NumMe1,NumMe2,ApellMe1,ApellMe2);
        alumnoNumeroM(NumeroI,apellido,NumM1,NumM2,ApellM1,ApellM2);
    until (NumeroI=1200);   
    writeln('los apellidos de los dos alumnos con numero de inscripcion mas alto es: ',ApellM1,' y ',ApellM2);
    writeln('los apellidos de los dos alumnos con numero de inscripcion mas bajo es: ',ApellMe1,' y ',ApellMe2);
end.
