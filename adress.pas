{luke doyle
intro to programming
1-19-07
adress lab}

program adresses (input,output);
uses wincrt;
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
 end.