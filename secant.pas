program metode_secant;

uses crt;

var

x0, x1, x2, eps, galat:real;

i:integer;


function

f(x:real):real;

begin

eps:=0.00001;

f:=exp(x)+6*sin(x - 1);

end;

begin

clrscr;

i:=1;



writeln('________________________________________________________________________________________________________________________');

writeln('masukan titik awal pencarian ');

write('x0 = ');readln(x0);

write('x1 = ');readln(x1);

writeln('nilai epsilon = ',eps);

writeln('-------------------------------------') ;
writeln('-------------------------------------');
writeln('-------------------------------------');

repeat

x2:=x1-f(x1)*((x1-x0)/(f(x1)-f(x0)));

galat:=abs((x2-x1)/x2);

writeln(i:7,x0:18:9,x1:15:9,x2:15:9,f(x0):15:9,f(x1):15:9,f(x2):16:9,galat:14:9);

x0:=x1;

x1:=x2;

i:=i+1;

until

galat<eps;

writeln('------------------------------');

writeln('akar yang paling mendekati adalah = ',x2:2:9);
writeln ('YUVANI OKSARIANTI');

readln;

end.

