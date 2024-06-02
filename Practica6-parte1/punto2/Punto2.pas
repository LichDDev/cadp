program ejercicio2;
type
    lista = ^nodo;
    persona = record
        dni: integer;
        nombre: string;
        apellido: string;
    end;

    nodo = record
        dato: persona;
        sig: lista;
    end;

procedure leerPersona(p: persona);{Lee la informacion de una persona pero no se devuelve(VAR)}
begin
    read(p.dni);
    if (p.dni <> 0)then begin
        read(p.nombre);
        read(p.apellido);
    end;
end;

{Agrega un nodo a la lista}
procedure agregarAdelante(l:lista;p:persona);{Agrega un nodo a la lista pero no se devuelve(VAR)}
var
    aux: lista;
begin{no se inicializo la variable aux con un new}
    aux^.dato:= p;
    aux^.sig:= l;
    l:= aux;
end;

{Carga la lista hasta que llega el dni 0}
procedure generarLista(var l:lista); 
var
    p:nodo;{en todo caso tendria que ser de tipo persona}
begin
    leerPersona(p);
    while (p.dni <> 0) do begin {no se puede acceder a dni desde p(en todo caso seria p.dato.dni)}
        agregarAdelante(l,p); { p tiene que ser de tipo persona}
    end;
end;

procedure imprimirInformacion(var l:lista); {esto deberia ser dato por referencia para que no modifique la lista}
begin
    while (l <> nil) do 
    begin
        writeln('DNI: ', l^.dato.dni, 'Nombre:',l^.nombre, 'Apellido:', l^.apellido);{2 errores aqui}
        l:= l^.sig;
    end;
end;

{Programa principal}
var
    l:lista;
begin
    generarLista(l);
    imprimirInformacion(l);
end.
{2. Dado el siguiente código que lee información de personas hasta que se ingresa la persona con dni 0 y
luego imprime dicha información en el orden inverso al que fue leída, identificar los 9 errores}