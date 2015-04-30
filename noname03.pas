program blackjack (input, output);
uses wincrt;
var index, cardnum, suitnum, cardvalue:integer;
suit, cardface: string;
deck:array[1..4,1..13];
response:char;
begin

procedure setup;
 begin

  clrscr;
  cardnum:=random(1000) mod 52+1;
  suitnum:=random(1000) mod 4+1;

  cardface:=cardnum mod 14+1;

  deck[suitnum,cardface