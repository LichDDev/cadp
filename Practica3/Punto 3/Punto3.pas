program Punto3;

type
    Tescuelas = record
        cue : integer;
        nombreEstable : string;
        cantDocente : integer;
        cantAlumnos : integer;
        localidad : string;
    end;

procedure leerInformacion(var escuelas:Tescuelas);
begin
    write('ingrese el cue de la escuela: ');
    readln(escuelas.cue);
    write('ingrese el nombre del establecimiento: ');
    readln(escuelas.nombreEstable);
    write('ingrese la cantidad de docentes: ');
    readln(escuelas.cantDocente);
    write('ingrese la cantidad de alumnos de la escuela: ');
    readln(escuelas.cantAlumnos);
    write('ingrese la localidad de la escuela: ');
    readln(escuelas.localidad);
end;

function relacionDocente(escuelas : Tescuelas):real;
begin
    if (escuelas.cantDocente = 0) then
        relacionDocente:=0
    else
        relacionDocente := (escuelas.cantAlumnos / escuelas.cantDocente) ;
end;

procedure mejoresEscuelas(rela : real; var cue1,cue2 :integer;var mejorRel1,mejorRel2 : real; escuelas : Tescuelas;nombreM1,nombreM2:string);
begin
    if (rela>mejorRel1) then
    begin
        mejorRel2:=mejorRel2;
        mejorRel1:=rela;

        cue2:=cue1;
        cue1:=escuelas.cue;
        
        nombreM2:=nombreM1;
        nombreM1:=escuelas.nombreEstable;
    end
    else
    begin
        if(rela>mejorRel2)then
        begin
            mejorRel2:=rela;
            nombreM2:=escuelas.nombreEstable;
            cue2:=escuelas.cue;
        end;
    end;
end;

procedure mejorRelLaPlata(rela:real;var cantEscuelas : integer);
begin
    cantEscuelas:=0;
    if (rela > 23435) then
        cantEscuelas:=cantEscuelas+1;
end;
var
    escuelas : Tescuelas;
    i : integer;
    rela : real;
    mejorRel1,mejorRel2:real;
    cue1,cue2:integer;
    nombreM1,nombreM2:string;
    cantEscuelas:integer;
begin
    mejorRel1:=0;
    mejorRel2:=0;
    

    for i := 1 to 24 do
    begin
        leerInformacion(escuelas);
        rela:= relacionDocente(escuelas);
        mejoresEscuelas(rela,cue1,cue2,mejorRel1,mejorRel2,escuelas,nombreM1,nombreM2);
        if(escuelas.localidad= 'la plata')then
            mejorRelLaPlata(rela,cantEscuelas);
    end;       
end.