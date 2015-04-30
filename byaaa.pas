{Lucas doyle
Intro to Computer Programming
3-14-07
BlackJack}


program Blackjack (input,output);

uses
 wincrt;
var
 cardnum,suit,cardface,cardvalue,value,count,pcount,ccount,human,computer,ptotal,dtotal:integer;
 suitnum,cardhead:string[13];
 cardarray:array [1..4,1..13] of boolean;
 choice,choice1,response,response1:char;
 done,compwon,continue:boolean;

procedure deckf; {makes deck false}
var
 a,b:integer;
begin
 for a:=1 to 13 do
  for b:=1 to 4 do
  cardarray[a,b]:=false
end;





procedure pickacard; {picks a random card}
begin
 cardnum:=random(1000) mod 52 +1;
 suit:=random(1000) mod 4 +1;
 value:=cardnum mod 14+1;
while cardarray[suit,value]=true do
 begin
  cardnum:=random(1000) mod 52 +1;
  suit:=random(1000) mod 4 +1;
  value:=cardnum mod 14+1;
 end;
cardarray[suit,value]:=true;
case suit of
 1:suitnum:=' of diamonds';
 2:suitnum:=' of hearts';
 3:suitnum:=' of clubs';
 4:suitnum:=' of spades';
 end;
value:=cardnum mod 13+2;
case value of
  2..10:begin
        cardface:=value;
        cardvalue:=value;
        end;
  11: begin
       cardhead:='Jack';
       cardvalue:=10;
       end;
  12: begin
       cardhead:='Queen';
       cardvalue:=10;
       end;
  13: begin
       cardhead:='King';
       cardvalue:=10;
       end;
  14: begin
        if ptotal <=10 then cardvalue:=11
         else cardvalue:=1;
        if dtotal <=10 then cardvalue:=11
         else cardvalue:=1;
       cardhead:='Ace';
       end;
  end;
end;

















procedure display;
begin
if value <= 10 then writeln(cardface,suitnum)
else
if value > 10 then writeln(cardhead,suitnum);
end;

 procedure hitme;
 begin
 if pcount=2 then
  gotoxy(47,4);
 if pcount=3 then
  gotoxy(47,5);
 if pcount=4 then
  gotoxy(47,6);
 pickacard;
 pcount:=pcount+1;
 display;
 ptotal:=ptotal+cardvalue;
 end;



















procedure nother_card;
begin
if pcount<5 then continue:=true else continue:=false;
if ptotal<21 then continue:=true else continue:=false;
if continue=false then
 done:=true;
if continue=true then
begin
 gotoxy(1,20);
 writeln('do you want another card? ');
 readln(choice);
 choice:=upcase(choice);
  begin
  if choice in ['Y']
  then hitme
  else done:=true;
 end;
 end;
 end;












procedure dealershow;
 begin
 if ccount=1 then
  gotoxy(22,3);
 if ccount=2 then
  gotoxy(22,4);
 if ccount=3 then
  gotoxy(22,5);
 if ccount=4 then
  gotoxy(22,6);
 if ccount=5 then
  gotoxy(22,7);
 if ccount=6 then
  gotoxy(22,8);
 pickacard;
 ccount:=ccount+1;
 display;
 dtotal:=dtotal+cardvalue;
 end;













 procedure deal;
 begin
 count:=1;
 ccount:=0;
 pcount:=0;
 gotoxy(25,1);
 writeln('Computer has:');
 gotoxy(50,1);
 writeln('You have:');
 begin
  gotoxy(47,2);
  pickacard;
  pcount:=pcount+1;
  display;
  ptotal:=cardvalue;
  end;
 begin
  gotoxy(22,2);
  pickacard;
  ccount:=ccount+1;
  display;
  dtotal:=cardvalue;
  end;
 begin
  gotoxy(47,3);
  pickacard;
  pcount:=pcount+1;
  display;
  ptotal:=ptotal+cardvalue;
 end;
 end;

















procedure total;
begin
gotoxy(45,18);
writeln('Your card total: ', ptotal);
end;
  
procedure dealer_total;
begin
 gotoxy(19,18);
 writeln('dealer card total: ', dtotal);
end;












procedure whowins;
begin
repeat
dealershow;
dealer_total;
until dtotal>=16;

begin
 compwon:=false;
 if (ptotal>21) or (dtotal>21)
  then begin
   if ptotal>21 then compwon:=true else compwon:=false;
   end
  else if (pcount=5) or (ccount=5)
   then begin
    if pcount=5 then compwon:=false else compwon:=false;
    end
  else if (ptotal=21) and (pcount=2) and (dtotal<>21)
   then begin
    compwon:=false;
    gotoxy(36,22);
    if pcount=2 then writeln('BlackJack!')
     else writeln;
    end
  else if dtotal=21 then compwon:=true
  else if ptotal>dtotal then compwon:=false else if dtotal>ptotal then compwon:=true
  else if ptotal=dtotal then compwon:=true;
  if compwon then
      begin
       gotoxy(36,23);
       writeln('The dealer wins');
      end
      else begin
       gotoxy(36,23);
       writeln('You win');
      end;
end;
end;















procedure menu;
var
 new_game:char;
begin
repeat;
clrscr;
deckf;
deal;
total;
 repeat
  done:=false;
  nother_card;
  total;
 until done=true;
whowins;
writeln('Do you want to try again?');
readln(new_game);
new_game:=upcase(new_game);
until new_game in ['N']; 
end;

begin
writeln('welcome to blackjack');
writeln('want to try your luck?');
readln(response);
response:=upcase(response);
if response in ['Y'] then menu;
donewincrt;
end.