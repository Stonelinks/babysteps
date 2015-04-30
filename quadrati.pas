{lucas doyle
intro to programming
1/11/07
quadratic formula}
program quadform (input,output);

uses
 wincrt;
var
 a,b,c,x1,x2,disc:real;
 answer:char;
begin
 repeat;
 clrscr;
 writeln('This is the Quadratic formula.');
 writeln('Enter your values for A, B and C');
 write('A= ':6);
 readln(a);
 write('B= ':6);
 readln(b);
 write('C= ':6);
 readln(c);
 disc:= (sqr(b)-(4*a*c));
 if disc<=0
 then
  writeln ('nonreal roots')
  else
   begin
   x1:=(sqrt(disc)+b)/(2*a);
  x2:=(sqrt(disc)-b)/(2*a);
  writeln('Your roots are: ');
  write('(');
  write(x1:4:1);
  write(',0 ) (');
  write(x2:4:1);
  writeln(',0 )');
  end;
  writeln;
  writeln;
  write ('Fancy another go? (Y/N)?');
  readln(answer);
  until answer in ['n','N'];
  readln;
  donewincrt;
  end.