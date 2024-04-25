program Punto10;

procedure informar(VeriA,VeriB:Boolean);
begin
    if(VeriA<>true)then
        writeln('no se cumple el patron A');
    if(VeriB<>true)then
        writeln('no se cumple el patron B');
end;
function VeriA(caracter:char):Boolean;
begin
    if (caracter = 'a')or(caracter='e')or(caracter='i')or(caracter='o')or(caracter='u') then
        VeriA:=true
    else
        VeriA:=false;
end;
function VeriB(caracter:char):Boolean;
begin
    if (caracter <>'a')and(caracter<>'e')and(caracter<>'i')and(caracter<>'o')and(caracter<>'u')and(caracter<>'#')and(caracter<>'$') then
        VeriB:=true
    else
        VeriB:=false;
end;

var
    caracter: char;
    i: integer;
    VerifA,VerifB:Boolean;
begin
    for i := 1 to 4 do
    begin
        write('ingresa un caracter: ');
        readln(caracter);
        if(i = 1)then
            VerifA:=VeriA(caracter);
        if(i = 3)then
            VerifB:=VeriB(caracter);    
    end;
    informar(VerifA,VerifB);
end.
