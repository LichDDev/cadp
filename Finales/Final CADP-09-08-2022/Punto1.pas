program Final;

type    
    categorias = 1..5;
    participante = record
        dni: integer;
        nombre: string;
        apellido: string;
        categoria : cartegorias;
        fechaInscripcion: string;
    end;
    parVec = array[1..5000] of participante;

    catList = ^nodo;
    nodo = record
        dato: participante;
        sig: catList;
    end;
    catVec = array[categorias] of catList;

    cantParticipantes = array[categorias] of integer; //contador para los estudiante en sus diferentes categorias

procedure agregarAtras(var pri: catList; p: participante);
var 
    aux: catList;
begin
    new(aux);
    aux^.dato := p;
    aux^.sig := nil;
    if(pri = nil) then
        pri := aux
    else
    begin
        aux^.sig := pri;
        pri := aux;
    end;
end;
procedure contarCategorias(c: parVec; dimL:integer; var cant:cantParticipantes);
var 
    i: integer;
begin
    for i:=1 to dimL do
        cant[c[i].categoria] := cant[c[i].categoria] + 1;
end;

procedure categorizar(var v: catVec; c: parVec; dimL:integer);
var 
    cant:cantParticipantes; // inicializo todo en 0 
begin
    contarCategorias(c, dimL, cant);
    for i:=1 to dimL do
    begin
        if(cant[c[i].categoria] <= 500) then //a lo sumo 500 participantes
        begin
            agregarAtras(v[c[i].categoria], c[i]);
        end;
    end;
end;

var
    v : catVec; //inicializo todo en nil
    c : parVec;
begin
    cargar(c); //se dispone
    categorizar(v, c); //se dispone
end.
