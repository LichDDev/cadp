program punto4;

type
    lista = ^nodo;	

    registro = array[1..42] of real;

    embarazada = record
        nombre : string;
        apellido : string;
        peso : registro;
    end;

    nodo = record
        info : embarazada;
        sig: lista;
    end;

procedure cargarDat(var P : embarazada;var DL : integer);
begin
    write('ingrese el nombre de la persona: ');
    readln(P.nombre);
    write('ingrese el apellido de la persona: ');
    readln(P.apellido);
    while(P.peso[1] = 0) and (DL <= 42) do
    begin
        write('ingrese el peso de la persona: ');
        readln(P.peso[DL+1]);
        DL := DL + 1;
    end;
end;

procedure crearNodo(var L : lista; P : embarazada);
var
    aux : lista;
begin
    new(aux);
    aux^.info := P;
    aux^.sig := L;
    L := aux;
end;

procedure crearLista(var L : lista;var DL : integer);
var
    P : embarazada;
begin
    cargarDatos(P,DL);
    while(P.peso[1] <> 0) do
    begin
        crearNodo(L,P);
        cargarDat(P,DL);
    end;
end;

var
    L : lista;
    DL : integer;
begin
    DL := 0;
end.
{terminar luego o no xd}