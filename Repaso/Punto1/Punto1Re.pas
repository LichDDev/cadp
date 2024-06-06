program punto1;

type
    Lista = ^Nodo;

    persona = record
        dni : integer;
        nombre : string;
        apellido : string;
        edad : integer;
        codigo : integer;
    end;

    tipos = record
        cant : integer;
        genero : string;  
    end;

    codi = array[1..5] of tipos;

    Nodo = record
        info : persona;
        sig : Lista;
    end;

procedure iniciarArray(var cod : codi);
var
    i : integer;
begin
    for i := 1 to 5 do
        cod[i].cant := 0;
    cod[1].genero := 'drama';
    cod[2].genero := 'romantico';
    cod[3].genero := 'accion';
    cod[4].genero := 'suspenso';
    cod[5].genero := 'terror';
end;

procedure cargaDatos(var p : persona;var cod : codi);
begin
    write('ingrese el dni: ');
    readln(p.dni);
    write('ingrese el nombre: ');
    readln(p.nombre);
    write('ingrese el apellido: ');
    readln(p.apellido);
    write('ingrese la edad: ');
    readln(p.edad);
    write('ingrese el codigo: ');
    readln(p.codigo);
    cod[p.codigo].cant := cod[p.codigo].cant + 1;
end;

procedure crearNodo(var L : Lista;p : persona);
var
    aux : Lista;
begin
    new(aux);
    aux^.info:= p;
    aux^.sig := L;
    L := aux;
end;

procedure descomponerDni(P : persona;var cantDni : integer);
var
    digi : integer;
    cantPares : integer;
    cantImpares : integer;
begin
    cantPares := 0;
    cantImpares := 0;

    while(P.dni <> 0) do
    begin
        digi := P.dni mod 10;
        if (digi mod 2 = 0) then
            cantPares := cantPares + 1
        else
            cantImpares := cantImpares + 1;
        
        P.dni := P.dni DIV 10;
    end;

    if(cantPares > cantImpares) then
        cantDni:=cantDni + 1;

    writeln('P.dni');    
end;

procedure calcularGenero(cod : codi;var pos1,pos2 : integer);
var
    i : integer;
    max,max2 : integer;
begin
    max := -1;
    max2 := -1;

    for i := 1 to 5 do
    begin
        if(cod[i].cant > max) then
        begin
            pos2 := pos1;
            pos1 := i;

            max2 := max;
            max := cod[i].cant;
        end
        else
        begin
            if(cod[i].cant > max2) then
            begin
                max2 := cod[i].cant;
                pos2 := i;
            end;
        end;
    end;
end;

procedure informar(cantDni : integer;pos1,pos2 : integer;cod : codi);
begin
    writeln('la cantidad de personas que tienen mas dni de pares que impares es: ',cantDni);
    writeln('el genero que mas se repite es: ',pos1,' ',cod[pos1].genero);
    writeln('el genero que segundo se repite es: ',pos2,' ',cod[pos2].genero);
end;

procedure eliminiarDni(var L : Lista; dni : integer);
var
    anterior,actual : Lista;
begin
    if(L <> nil) then
    begin
        anterior := L;
        actual := L;

        while(actual <> nil)and(actual^.info.dni <> dni) do
        begin
            anterior := actual;
            actual := actual^.sig;
        end;

        if(actual = L) then
        begin
            L := L^.sig;
            dispose(actual);
        end
        else
        begin
            anterior^.sig := actual^.sig;
            dispose(actual);
        end;
    end;
end;

procedure ObtenerInformacion(L : Lista;cod : codi);
var
    cantDni : integer;
    pos1 : integer;
    pos2 : integer;
begin
    cantDni := 0;

    while(L <> nil) do
    begin
        descomponerDni(L^.info,cantDni);
        L := L^.sig;
    end;
    calcularGenero(cod,pos1,pos2);
    informar(cantDni,pos1,pos2,cod);
end;

procedure armarLista(var L : Lista;var cod : codi);
var
    p : persona;
begin
    repeat
        cargaDatos(p,cod);
        crearNodo(L,p);
    until (p.dni =  335);
end;

var
    L : Lista;
    cod : codi;
    dni : integer;
begin
    iniciarArray(cod);
    armarLista(L,cod);
    ObtenerInformacion(L,cod);

    writeln('ingrese el dni a eliminar: ');
    readln(dni);
    eliminiarDni(L,dni);
end.