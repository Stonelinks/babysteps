{Lucas Doyle               Intro to Computer Programming
1/9/2007                   Tringle Lab}

program triangles (input, output);
 uses
 wincrt;
 var
 a,b,c:real;
 tri,equ,iso,sca:boolean;
 answer:char;
begin
 repeat;
 clrscr;
 writeln ('This program will tell you what type of triangle you have');
 writeln ('Enter your values for each side of the triangle');
 write ('A=':6); readln(a); write ('B=':6); readln(b); write ('C=':6); readln(c);
 if (a+b>c) and (b+c>a) and (c+a>b)
  then
    begin {else}
    tri:=true;
     if (a=b) and (b=c) and (c=a)
      then equ:=true
      else
       if (a<>b) and (b<>c) and (a<>c)
       then sca:=true
       else iso:=true;
    end; {else}
  writeln('Triangle is: ', tri:7);
  writeln('Equilateral: ', equ:7);
  writeln('Isosceles is: ', iso:6);
  writeln('Scalene: ', sca:11);
  writeln; writeln; writeln;
  write ('Fancy another go? (Y/N)?');
  readln(answer); 
  until answer in ['n','N'];
 readln;
 donewincrt;
 end.