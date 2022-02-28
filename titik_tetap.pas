program Iterasi_Titik_Tetap;
uses crt;
var
    i, max                              : integer;
    er, tolmax, tolmin, xbaru, xlama    : real;
label 1, 2, 3;

function f(a:real):real;
begin
     f:= a*a*a - 2*a*a+3;
end;
function g(b:real):real;
begin
     g:= sqr(b*b*b-3/2);
end;


begin
1:
  write('Tebakan awal       = ');readln(xlama);
  write('Toleransi maksimal = ');readln(tolmax);
  write('Toleransi minimum  = ');readln(tolmin);
  write('Iterasi maksimum   = ');readln(max);

  writeln;
  writeln('     i = ',i,'   X',i,' = ',xlama:0:6);
  i:= 1;
  repeat
        xbaru:= g(xlama);
        er:= abs(xbaru-xlama);
        writeln('     i = ',i,'   X',i,' = ',xbaru:0:6);

        if er > tolmax then
           begin
                writeln('');
                writeln('Fungsi divergen.');
                goto 3;
           end;

        if i = max then
           begin
                writeln('');
                writeln('Fungsi belum konvergen.');
                goto 3;
           end;

        xlama:= xbaru;
        i:= i + 1;
  until er < tolmin;

  writeln('');
  writeln('Akar ditemukan!');
  writeln('Pada iterasi ke-',i-1,' dengan akarnya adalah ',xlama:0:6);
  write('Cek kebenaran akar...');
  if f(xlama) = 0 then
     begin
          writeln('Akar sesuai!');
          writeln('Maka fungsi anda konvergen ke ',xlama:0:6);
     end
  else
      begin
           writeln('Akar tidak sesuai!');
           writeln('Akar = ',xlama:0:6,' tidak menghasilkan 0 setelah pensubstitusian ke f(x)');
      end;

3:
  writeln('');
  writeln('Ingin mencoba lagi?  1. Ya  2. Tidak');readln(i);
  if i = 1 then
     begin
          clrscr;i:= 0;goto 1;
     end
  else
      begin
           writeln('');
           writeln('Terima kasih sudah menggunakan program ini.');
           writeln('YUVANI OKSARIANTI');
      end;
end.
