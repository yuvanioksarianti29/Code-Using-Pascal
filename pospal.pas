program Posisi_Palsu;
uses crt;
var
   i, j                    : integer;
   a, b, c, clama, tol, er : real;

label 1, 2, 3, 4, 5;

function f(x:real):real;
begin
     f:= 6*exp(-x)*cos(x)
end;

begin
1:
     {1. Input berupa titik awal, jarak antar titik, dan toleransi}
     writeln('Masukkan titik awal pencarian.');
     write('a = ');readln(a);
     write('b = ');readln(b);
     writeln('Masukkan besar toleransi.');
     write('tol = ');readln(tol);
     writeln;


     {2. Proses pencarian akar menggunakan metode posisi palsu}
     c:= 0;
     i:= 0;
     write('iterasi: ',i,', a = ',a:0:6,', b = ',b:0:6);
     repeat
           clama:= c;
           c:= b - f(b)*((b-a)/(f(b)-f(a)));
           writeln(', c = ',c:0:6);
           if f(a)*f(c) < 0 then
              begin
                   b:= c;
              end;
           if f(a)*f(c) = 0 then
              begin
                   writeln('Akarnya = ',c:0:6);
              end;
           if f(a)*f(c) > 0 then
              begin
                   a:= c;
              end;

           i:= i+1;
           write('iterasi: ',i,', a = ',a:0:6,', b = ',b:0:6);
           er:= abs(c-clama);
     until er < tol;

     {3. Output berupa akar dan pada iterasi berapa ditemukan akar tersebut}
     writeln;writeln;
     writeln('akar = ',c:0:6,'  pada iterasi ke-',i);
     writeln('');

3:
  {Optional}
  writeln('Ingin mencoba lagi?  1. Ya  2. Tidak');readln(j);
  if j = 1 then
     begin
          clrscr;goto 1;
     end
  else
      begin
           writeln('');
           writeln('Terima kasih sudah menggunakan program ini.');
           writeln('YUVANI OKARIANTI');
      end;
end.
