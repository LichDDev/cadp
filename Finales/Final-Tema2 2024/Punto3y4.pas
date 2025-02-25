program Punto3y4;

type
    info = record
        nombre: string;
        nota: integer;
        prom: real;
        datos: ^integer;
    end;
    vector = array[1..80] of info;
var
    v: vector; //80 * (256 de string + 4 de integer + 8 de real + 4 de puntero) = 80 * 272 = 21760 bytes
    i,cant: integer; //4 + 4 = 8 bytes
    e: info; //256 + 4 + 8 + 4 = 272 bytes 
    // deja un total de 22040 bytes de memoria estatica utilizada 
begin
    for i := 1 to 80 do //(3*N+1)+N*(cuerpo del for)
    begin
        read(e.nombre);
        read(e.nota);
        read(e.prom);
        if( i mod 2 = 0)then // 1UT + 1UT =2UT  (condicion + cuerpo del peor caso)
            new(v[i].datos) // 4 bytes de memoria dinamica * 40 veces que entra en el if= 160 bytes
        else 
            v[i].datos := nil;
    end; // (3*80+1)+80*(2) = 241 UT 
    i := 0; // 1UT asignacion
    while(i < 80)and(e.nombre <> 'ZZZ') do
    begin
        cant:=0; // 1UT asignacion
        if(v[i].nota > 5)then 
            cant:=cant+1; // 2UT (condicion + asignacion)
        i:=i+1; // 2UT (aritmetica y asignacion)
    end; // 1UT + 2UT + 2UT = 5UT de cuerpo 
    //3UT*(80+1)+80*(5) = 241UT -> formula de while C*(N+1)+N*(Cuerpo del while) 
end. //total de UT = 241UT + 1UT + 241UT = 483UT
