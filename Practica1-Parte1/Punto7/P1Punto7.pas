program Punto7;

{Realizar un programa que lea el código, el precio actual y el nuevo precio de los productos de un almacén.
La lectura finaliza al ingresar el producto con el código 32767, el cual debe procesarse. Para cada producto
leído, el programa deberá indicar si el nuevo precio del producto supera en un 10% al precio anterior.
Por ejemplo:
○ Si se ingresa el código 10382, con precio actual 40 y nuevo precio 44, deberá imprimir:
El aumento de precio del producto 10382 no supera el 10%
○ Si se ingresa el código 32767, con precio actual 30 y nuevo precio 33,01, deberá imprimir:
El aumento de precio del producto 32767 es superior al 10%”
}

var
    precioA: Real;
    precioN: Real;
    Codigo: Integer;

begin
    write('ingrese el codigo del producto: ');
    read(codigo);
    write('ingrese el precio actual: ');
    read(precioA);
    write('ingrese el nuevo precio: ');
    read(precioN);

    if((precioN/precioA)*100 > 10.00) then
        write('el aumento del producto: ',codigo,' conprecio actual de: ',precioA:0:2,' y nuevo precio de: ',precioN:0:2,' es superior el 10%')
    else
        write('el aumento del producto: ',codigo,' conprecio actual de: ',precioA:0:2,' y nuevo precio de: ',precioN:0:2,' no supera el 10%');
end.
