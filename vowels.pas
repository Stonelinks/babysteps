{a sweet vowel program i needed to recopy
19 19 19 19 19 19 19 19 19 19 19 23
OH YEAH ITS LUCAS DOYLE}

program vowels (input, output);
uses wincrt;
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
donewincrt;
end.                                                                                            