{Lucas Doyle
intro to computer programming
12/19/06
Logo Program}
Program logo (output);
uses wincrt;
var
  x,y,i : integer;
  j,k : longint;

begin
 for i:= 1 to 100 do
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

  for j:= 1 to 10000 do
  for k:= 1 to 10000 do;
  clrscr;

  gotoxy(x+4, y+1); writeln('000');
  y:=y+1;
  gotoxy(x+4, y+1);writeln('0  0000');
  y:=y+1;
  gotoxy(x+4, y+1);writeln('0      00000');
  y:=y+1;
  gotoxy(x+4, y+1);writeln('0           000000');
  y:=y+1;
  gotoxy(x+4, y+1);writeln('0                 000000000000000');
  y:=y+1;
  gotoxy(x+4, y+1);writeln('0                        0       000000');
  y:=y+1;
  gotoxy(x+4, y+1);writeln('0                        0             00000');
  y:=y+1;
  gotoxy(x+4, y+1);writeln('0           00           0                  0000');
  y:=y+1;
  gotoxy(x+4, y+1);writeln('0          00            0                      000');
  y:=y+1;
  gotoxy(x+4, y+1);writeln('0          00            0         000000          00');
  y:=y+1;
  gotoxy(x+4, y+1);writeln('0         00             0          0    0           0');
  y:=y+1;
  gotoxy(x+4, y+1);writeln('0         00             0          0    0           0');
  y:=y+1;
  gotoxy(x+4, y+1);writeln('0         00             0          0    0           0');
  y:=y+1;
  gotoxy(x+4, y+1);writeln('0         000000         0         0     0           0');
  y:=y+1;
  gotoxy(x+5, y+1);writeln('00                      0         0    0            0');
  y:=y+1;
  gotoxy(x+7, y+1);writeln('0000                  0        000000             0');
  y:=y+1;
  gotoxy(x+11, y+1);writeln('00000             0                           0');
  y:=y+1;
  gotoxy(x+16, y+1);writeln('000000       0                           0');
  y:=y+1;
  gotoxy(x+22, y+1);writeln('000000000000000                    0');
  y:=y+1;
  gotoxy(x+37, y+1);writeln('000000              0');
  y:=y+1;                                                                    
  gotoxy(x+43, y+1);writeln('00000         0');
  y:=y+1;
  gotoxy(x+48, y+1);writeln('0000     0');
  y:=y+1;
  gotoxy(x+52, y+1);writeln('000  0');
  y:=y+1;
  gotoxy(x+55, y+1);writeln('000');

  for j:= 1 to 10000 do
  for k:= 1 to 10000 do;
  clrscr;

  gotoxy(x+4, y+2); writeln('000');
  y:=y+1;
  gotoxy(x+4, y+2);writeln('0  0000');
  y:=y+1;
  gotoxy(x+4, y+2);writeln('0      00000');
  y:=y+1;
  gotoxy(x+4, y+2);writeln('0           000000');
  y:=y+1;
  gotoxy(x+4, y+2);writeln('0                 000000000000000');
  y:=y+1;
  gotoxy(x+4, y+2);writeln('0                        0       000000');
  y:=y+1;
  gotoxy(x+4, y+2);writeln('0                        0             00000');
  y:=y+1;
  gotoxy(x+4, y+2);writeln('0           00           0                  0000');
  y:=y+1;
  gotoxy(x+4, y+2);writeln('0          00            0                      000');
  y:=y+1;
  gotoxy(x+4, y+2);writeln('0          00            0         000000          00');
  y:=y+1;
  gotoxy(x+4, y+2);writeln('0         00             0          0    0           0');
  y:=y+1;
  gotoxy(x+4, y+2);writeln('0         00             0          0    0           0');
  y:=y+1;
  gotoxy(x+4, y+2);writeln('0         00             0          0    0           0');
  y:=y+1;
  gotoxy(x+4, y+2);writeln('0         000000         0         0     0           0');
  y:=y+1;
  gotoxy(x+5, y+2);writeln('00                      0         0    0            0');
  y:=y+1;
  gotoxy(x+7, y+2);writeln('0000                  0        000000             0');
  y:=y+1;
  gotoxy(x+11, y+2);writeln('00000             0                           0');
  y:=y+1;
  gotoxy(x+16, y+2);writeln('000000       0                           0');
  y:=y+1;
  gotoxy(x+22, y+2);writeln('000000000000000                    0');
  y:=y+1;
  gotoxy(x+37, y+2);writeln('000000              0');
  y:=y+1;                                                                    
  gotoxy(x+43, y+2);writeln('00000         0');
  y:=y+1;
  gotoxy(x+48, y+2);writeln('0000     0');
  y:=y+1;
  gotoxy(x+52, y+2);writeln('000  0');
  y:=y+1;
  gotoxy(x+55, y+2);writeln('000');
  end;
 readln;
 donewincrt;
end.
