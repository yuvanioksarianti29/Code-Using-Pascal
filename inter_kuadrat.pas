program kuadrat;
uses crt;
var
x, x1, x2, y1, y2, x3, y3, pers1, pers2, pers3, hasil : real;
begin
clrscr;
writeln;
write('--Mencari Persamaan Linier--');
writeln; writeln;
write('    Masukan nilai x[1] = '); readln(x1);
write('    Masukan nilai y[1] = '); readln(y1);
write('    Masukan nilai x[2] = '); readln(x2);
write('    Masukan nilai y[2] = '); readln(y2);
write('    Masukan nilai x[3] = '); readln(x3);
write('    Masukan nilai y[3] = '); readln(y3);
writeln;
write('>> Masukan nilai x yang akan dicari : ');
readln(x);
pers1:= ((x-x2)*(x-x3))/((x1-x2)*(x1-x3));
pers2:= ((x-x1)*(x-x3))/((x2-x1)*(x2-x3));
pers3:= ((x-x1)*(x-x2))/((x3-x1)*(x3-x2));
hasil:= (y1*pers1)+(y2*pers2)+(y3*pers3);
writeln;
write('>> Hasil Perhitungan P(x) adalah    : ', hasil:2:2);
readln;
end.
