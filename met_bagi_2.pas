program metodebagiduaok;
uses crt;
const epsilon=0.00001;
var
  a,b,c,fa,fb,fc,galat:real;
   ite,n: integer;

begin
clrscr;

  a:=0;
  b:=1;
     gotoxy(1,8);write(' I');
     gotoxy(10,8);write('a');
     gotoxy(22,8);write('b');
     gotoxy(35,8);write('t');
     gotoxy(47,8);write('f(a)');
     gotoxy(61,8);write('f(t)');
     gotoxy(73,8);write('b-a');

ite:=0;
n:=10;

repeat

  fa:=-6*ln(a)-(3*sin(a)-1);
  fb:=-6*ln(b)-(3*sin(b)-1);
  c:=(a+b)/2;
  fc:=-6*ln(c)-(3*sin(c)-1);
  galat:=b-a;
      if fa*fc < 0 then
      b:=c
      else
      a:=c;

ite:=ite+1;
n:=n+1;
           gotoxy(2,n);writeln(ite);
           gotoxy(6,n);writeln(a:0:5);
           gotoxy(19,n);writeln(b:0:5);
           gotoxy(32,n);writeln(c:0:5);
           gotoxy(45,n);writeln(fa:0:5);
           gotoxy(58,n);writeln(fc:0:5);
           gotoxy(71,n);writeln(galat:0:5);
until galat < epsilon;

gotoxy(1,n+3);writeln('Nilai akar persamaannya adalah : ',c:0:5);
readln;
readln;
end.
