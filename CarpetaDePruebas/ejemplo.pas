program a;

var
    v: array[1..5] of integer;
    i: integer;
begin
    for i := 0 to 8 do
        v[i] := i;
    for i := 0 to 8 do
        writeln(v[i]);
end.

