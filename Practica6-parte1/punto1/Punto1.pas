program JugamosConListas;
type
    lista = ^nodo;

    nodo = record
        num : integer;
        sig : lista;
    end;

procedure armarNodo(var pri: lista; v: integer);
var
    aux : lista;
begin
    new(aux); {asigna una direccion de memoria a aux}
    aux^.num := v; {carga el valor}
    aux^.sig := pri;  {le asigna al puntero siguiente el puntero principal}
    pri := aux;   {agrega un nodo a la lista original}
end;

procedure imprimirNumero(pri : lista); {C}
begin
    while(pri <> nil) do
    begin
        writeln(pri^.num);
        pri := pri^.sig;
    end;
end;

procedure incrementarLista( pri : lista;valor : integer); {D}
begin
    while(pri <> nil) do
    begin
      pri^.num := pri^.num + valor;
      pri := pri^.sig;
    end;
end;

var
    pri : lista;
    valor : integer;
    valorI : integer;
begin
    pri := nil;

    write('ingrese numero: ');
    readln(valor);  

    while (valor <> 0) do
    begin
        armarNodo(pri, valor);
        
        write('ingrese numero: ');
        readln(valor);
    end;
    imprimirNumero(pri);

    writeln('ingrese un numero para incrementar la lista: ');
    readln(valorI);

    incrementarLista(pri,valorI);

    imprimirNumero(pri);
end.
{   a. Indicar qué hace el programa.
    A) Generar una lista de números enteros.

    b. Indicar cómo queda conformada la lista si se lee la siguiente secuencia de números: 10 21 13 48 0.
    B) 10 21 13 48

    c. Implementar un módulo que imprima los números enteros guardados en la lista generada.

    d. Implementar un módulo que reciba la lista y un valor, e incremente con ese valor cada dato de la
    lista.}