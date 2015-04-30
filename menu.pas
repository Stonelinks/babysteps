{luke doyle
intro programming
1-12-07
menu}
program cheers (input,output);
 uses wincrt;
 var response2:char;

procedure logo;
var
  x,y : integer;
begin
 clrscr;
 
 x:=0;
 y:=4;
  gotoxy(x+4, y); writeln('000');
  y:=y+1;
  gotoxy(x+4, y);writeln('0  0000');
  y:=y+1;
  gotoxy(x+4, y);writeln('0      00000');
  y:=y+1;
  gotoxy(x+4, y);writeln('0           000000');
  y:=y+1;
  gotoxy(x+4, y);writeln('0                 000000000000000');
  y:=y+1;
  gotoxy(x+4, y);writeln('0                        0       000000');
  y:=y+1;
  gotoxy(x+4, y);writeln('0                        0             00000');
  y:=y+1;
  gotoxy(x+4, y);writeln('0           00           0                  0000');
  y:=y+1;
  gotoxy(x+4, y);writeln('0          00            0                      000');
  y:=y+1;
  gotoxy(x+4, y);writeln('0          00            0         000000          00');
  y:=y+1;
  gotoxy(x+4, y);writeln('0         00             0          0    0           0');
  y:=y+1;
  gotoxy(x+4, y);writeln('0         00             0          0    0           0');
  y:=y+1;
  gotoxy(x+4, y);writeln('0         00             0          0    0           0');
  y:=y+1;
  gotoxy(x+4, y);writeln('0         000000         0         0     0           0');
  y:=y+1;
  gotoxy(x+5, y);writeln('00                      0         0    0            0');
  y:=y+1;
  gotoxy(x+7, y);writeln('0000                  0        000000             0');
  y:=y+1;
  gotoxy(x+11, y);writeln('00000             0                           0');
  y:=y+1;
  gotoxy(x+16, y);writeln('000000       0                           0');
  y:=y+1;
  gotoxy(x+22, y);writeln('000000000000000                    0');
  y:=y+1;
  gotoxy(x+37, y);writeln('000000              0');
  y:=y+1;                                                                    
  gotoxy(x+43, y);writeln('00000         0');
  y:=y+1;
  gotoxy(x+48, y);writeln('0000     0');
  y:=y+1;
  gotoxy(x+52, y);writeln('000  0');
  y:=y+1;
  gotoxy(x+55, y);writeln('000');
 readln;
 end;

 procedure triangle;
var
 a,b,c:real;
 tri,equ,iso,sca:boolean;
 answer:char;
begin
 repeat;
 tri:=false;
 equ:=false;
 iso:=false;
 sca:=false;
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
 end;

 procedure quadrati;

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
  end;
  procedure menu ;
var x,y,choice:integer;
begin
x:=2; y:=1;
 gotoxy(x+4,y+4); writeln('+--------------------------+');
 gotoxy(x+4,y+5); writeln('| LUKE OS:                 |');
 gotoxy(x+4,y+6); writeln('|                          |');
 gotoxy(x+4,y+7); writeln('|  +PROGRAMS               |');
 gotoxy(x+4,y+8); writeln('|    1. LOGO               |');
 gotoxy(x+4,y+9); writeln('|    2. TRIANGLE           |');
 gotoxy(x+4,y+10); writeln('|    3. QUADRATIC          |');
 gotoxy(x+4,y+11); writeln('|                          |');
 gotoxy(x+4,y+12); writeln('+--------------------------+');
 write('     Please choose:');
 readln(choice);
   case choice of
     1:logo;
     2:triangle;
     3:quadrati;
 end;
 end;
  begin
  repeat
  clrscr;
  menu;
  writeln('Quit? (Y/N)');
  readln(response2);
  until response2 in ['y','Y'];
  readln;
  donewincrt
  end.           