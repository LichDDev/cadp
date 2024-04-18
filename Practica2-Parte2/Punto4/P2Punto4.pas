program programadores;

{Enunciado: Realice un programa que lea datos de 130 programadores Java de una empresa. De cada
programador se lee el número de legajo y el salario actual. El programa debe imprimir el total del dinero
destinado por mes al pago de salarios, y el salario del empleado mayor legajo.}

procedure leerDatos(var legajo: integer; salario : real);
begin
    writeln('Ingrese el nro de legajo y el salario');
    read(legajo); 
    read(salario); //la variable salario no retorna
end;
procedure actualizarMaximo(nuevoLegajo:integer; nuevoSalario:real; var maxLegajo:integer);
var
    maxSalario : real; //como esta declarado en el procedure no retorna
begin
    if (nuevoLegajo > maxLegajo) then 
    begin
        maxLegajo:= nuevoLegajo;
        maxSalario := nuevoSalario //falta ;
    end;
end;
var
    legajo, maxLegajo, i : integer; //falta inicializar maxLegajo
    salario, maxSalario : real;
begin
    sumaSalarios := 0; //no se declaro la variable
    for i := 1 to 130 do 
    begin
        leerDatos(salario, legajo);
        actualizarMaximo(legajo, salario, maxLegajo);
        sumaSalarios := sumaSalarios + salario;
    end;
    writeln('En todo el mes se gastan ', sumaSalarios, 'pesos'); //no se cumple con el enunciado ya que falta la variable
    writeln('El salario del empleado más nuevo es ' ,maxSalario);
end.
