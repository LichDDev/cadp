Program Alocacion_Dinamica;
Type
    TEmpleado = record
        sucursal: char;
        apellido: string[25];
        correoElectronico: string[40];
        sueldo: real;{1+26+41+8= 76 bytes}
end;
    Str50 = string[50];

Var
    alguien: TEmpleado;{76 bytes}
    PtrEmpleado: ^TEmpleado;{4} {76+4=80 bytes estaticos}
Begin
    {Suponer que en este punto se cuenta con 400.000 bytes de memoria disponible (I)}
    Readln( alguien.apellido );
    
    {Pensar si la lectura anterior ha hecho variar la cantidad de memoria (II)}
    {(II) la memoria disminuyo a 400.000-80 = 399,920 bytes}

    New( PtrEmpleado ); {76 bytes de memoria dinamica}
    {¿Cuánta memoria disponible hay ahora? (III)}
    {(III) queda 399,920 - 76 = 399,844 bytes}


    Readln( PtrEmpleado^.Sucursal, PtrEmpleado^.apellido );

    Readln( PtrEmpleado^.correoElectronico, PtrEmpleado^.sueldo );

    writeln( PtrEmpleado^.sucursal);
    {¿Cuánta memoria disponible hay ahora? (IV)}
    {(IV) queda lo mismo ya que no se añaden variables y la asignacion de valores no aumenta la memoria}

    Dispose( PtrEmpleado );
    {¿Cuánta memoria disponible hay ahora? (V)}
    {(V) queda 399,920 bytes por la memoria estatica}
end.