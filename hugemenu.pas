{program platypus (input,outputs);
 uses wincrt;
 var overallresponse:char;

{==============================Math Menu========================}

procedure cheers;
 var response2:char;

procedure logo;
var
  x,y : integer;
begin

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


procedure adresses;
var h, {house number}
    a {ave number}
    :integer;
begin
 writeln('This will tell you the nearest');
 writeln('cross street to your location.');
 write('House #=':16);
 readln(h);
 write('Avenue #=':16);
 read(a);
 h:=h div 20;
 h:=trunc(h);
 case a of
 1,2: h:=h+3;
 3,8,9:h:=h+10;
 4: h:=h+8;
 5:begin
  if h<200
   then h:=h+13
    else h:=h+16;
   end;
 6:h:=h-12;
 7:h:=h+12;
 10:h:=h+14;
 end;
 write('Nearest cross street is ',a);
 writeln(h);
 readln;
 readln;
 donewincrt;
 end;

procedure credit ;
 var l {liability}, a {asset}, i {income}:real;
 creditOK:boolean;
 r:char;
 begin
 repeat
 clrscr;
 writeln('Okay so this willl tell you if your credit is okay');
 writeln;
 write('What are your liabilities? ');
 readln; 
 write('What are your assets? ');
 readln;
 write('What is your income? ');
 readln;
 if (i>=25000) or (a>=100000) and (l>=50000)
  then creditok:=true
  else creditok:=false;
  writeln;
  writeln('Your credit is ', creditok);
  write('Again? ');
  read(r);
  until r in ['N','n'];
  readln;
  donewincrt;
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
 gotoxy(x+4,y+11); writeln('|    4. ADRESSES           |');
 gotoxy(x+4,y+12); writeln('|    5. CREDIT             |');
 gotoxy(x+4,y+13); writeln('|                          |');
 gotoxy(x+4,y+14); writeln('|                          |');
 gotoxy(x+4,y+15); writeln('+--------------------------+');
 write('     Please choose:');
 readln(choice);
   case choice of
     1:logo;
     2:triangle;
     3:quadrati;
     4:adresses;
     5:credit;
 end;
 end;
  begin
  repeat
  clrscr;
  menu;
  writeln('Quit? (Y/N)');
  readln(response2);
  until response2 in ['y','Y'];
end;
  {===========================englishy stuff menu=================}

procedure englishy_stuff;
 var
  response2:char;

Procedure PALINDROMES;
VAR WORD:STRING;
WLENGTH, COUNTER:INTEGER;
P:BOOLEAN;
R:CHAR;
BEGIN
REPEAT
CLRSCR;
WRITELN('THIS WILL TELL YOU IF WHAT YOU WRITE IS A PALINDROME');
WRITE('THIS IS WHAT YOU WRITE: ');
READLN(WORD);
WLENGTH:=ORD(word[0]);
COUNTER:=1;
REPEAT
WORD[COUNTER]:=UPCASE(WORD[COUNTER]);
IF ((ORD(WORD[COUNTER]) < 65) OR (ORD(WORD[COUNTER]) > 90))
THEN
BEGIN
DELETE (WORD,COUNTER,1);
WLENGTH:=WLENGTH-1;
END
ELSE COUNTER:=COUNTER+1;
UNTIL COUNTER > WLENGTH;
COUNTER:=1;
P:=TRUE;
REPEAT
IF ORD(WORD[COUNTER])<>ORD(WORD[WLENGTH])
THEN P:=FALSE
ELSE
BEGIN
COUNTER:=COUNTER+1;
WLENGTH:=WLENGTH-1;
END;
UNTIL ((COUNTER > WLENGTH) OR (P=FALSE));
WRITELN('PALINDROME IS ',P,'.');
WRITE('REPEAT ''FOO? ');
READ(R);
UNTIL R IN ['N','n'];
DONEWINCRT;
END;




procedure vowels;
var snum, counter, vnum:integer;
word:string;
response:char;
begin
repeat;
clrscr;
writeln('This program will tell you the amount of vowels in a given word');
write('Enter your word please: ');
readln(word);
snum:=ord(word[0]);
counter:=1;
while counter<=snum do
 begin
  word[counter]:=upcase(word[counter]);
  if word[counter] in ['A','E','I','O','U']
  then vnum:=vnum+1;
  counter:=counter+1;
 end;
writeln('the number of vowels in ', word, ' are ', vnum);
write('Care to repeat? (y/n)');
readln(response);
until response in ['n','N'];
end;