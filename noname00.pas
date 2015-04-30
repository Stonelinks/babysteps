{lucas palage doyle
inro to programming
teh best program in teyh wurld LOLOLOL!!!
11:48 AM YESTYERDAY}

program fibonacci (input, output);
uses wincrt;
var sum, counter, num, first, second :integer;
yorn:char;
begin
 repeat
 clrscr;
 writeln('Enter the number and this will tell you all the fibonacci numbers');
 writeln('up to it i guess, like if you want. I''m not here saying you have to.');
 writeln;
 write('What is your wish?  ':30);
 read(num);
 if num <=2 then
 writeln('There are no fibionacci sequences in your cup of tea')
 else
 begin
 sum:=2;
 counter:=2;
 first:=1;
 second:=1;
 write(first,',',second);
 repeat
 write(',', sum);
 counter:=counter+1;
 first:=second;
 second:=sum;
 sum:=first+second;
 until counter = num;
 writeln;
 writeln;
 end;
 write('Do you want to do this again? (y/n) ');
 readln(yorn);
 until yorn in ['N','n'];
 readln;
 donewincrt;
 end.






