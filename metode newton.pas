program metode_newton_raphson;
uses crt;
function f(x:real):real;
begin
 f:=-(x*x)-3*sin(x)+6;
end;
function g(x:real):real;
begin
 g:=-(2*x)-cos(x);
end;
var x0,x1,eps,galat : real;
    i: integer;
begin
clrscr;
writeln('___________________________________________________________________');
writeln('Nama: Yuvani Oksarianti');
writeln('Nim: 18337036');
writeln('-----METODE NEWTON RAPHSON----');
WRITELN('____________________________________________________________________');
eps:=0.0001;
write('x= '); readln(x0); writeln;
i:=0;

repeat
x1:=x0-(f(x0)/g(x0));
galat:=abs(x0-x1);
x0:=x1;
i:=i+1;
writeln('iterasi ke ',i,'= ',x1:0:9);
until galat<eps;
writeln;
writeln('akarnya adalah = ',x1:0:9);
readln;
end.

