{luke doyle
today 11:46
intro to programming
factorals}

program factorals (input, output);
uses wincrt;
var num,answer:longint;
r:char;
begin
 repeat
 clrscr;
 writeln('FACTORALS':20);
 write('N!= ':17);
 readln(num);
 if num > 0 then
 begin
 write(num);
 answer:= 1;
 repeat
 answer:=num*answer;
 num:=num-1;
 write(' * ', num);
 until num=1;
 writeln(' = ',answer);
 end
 else writeln('No negetive numbers here':20);
 writeln;
 write('You wanna do it again?':34);
 read(r)
 until r in ['n','N'];
 readln;
  
donewincrt;
end.