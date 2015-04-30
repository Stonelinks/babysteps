 program credit (input, output);
 uses wincrt;
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
 end.