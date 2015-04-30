{Lucas Doyle
Intro to Computer Programming
Blackjack Program - Final
3-11-07}


program shell {coveres all variables through out the program} (input, output);
uses wincrt;
var index, cardvalue, suitnum, cardface, cardnum, pcount, ptotal, ccount, ctotal, rctotal {real computer total}:integer;
suit, cardhead: string;
deck:array[1..4,1..13] of boolean;
response:char;
pdone, cdone, alldone:boolean;

const
 turtle = 'delicious';


procedure deckf; {deck false - makes entire deck false}
 var a,b:integer;
 begin
 for a:=1 to 4 do
  for b:=1 to 13 do
   deck[a,b]:=false;
   end;

procedure dcard; {comes up with a card}
 begin
  randomize;
  cardface:=random(1000) mod 13 +1;
  suitnum:=random(1000) mod 4 +1;
  while deck[suitnum,cardface]=true do
   begin
    cardface:=random(1000) mod 13+1;
    suitnum:=random(1000) mod 4 +1;
    end;
  deck[suitnum,cardface]:=true;
                   
  case cardface of
  2..10:cardvalue:=cardface;
  11:begin
     cardhead:='Jack';
     cardvalue:=10;
     end;
  12:begin
     cardhead:='Queen';
     cardvalue:=10;
     end;
  13:begin
     cardhead:='King';
     cardvalue:=10;
     end;
  14:begin
     cardhead:='Ace';
     cardvalue:=10;
     end;

  end;

  case suitnum of
  1:suit:=' of diamonds';
  2:suit:=' of hearts';
  3:suit:=' of clubs';
  4:suit:=' of spades';
  end;
  end;

  procedure show; {writes what card in possession}
   begin
    if cardface>=11
    then writeln(cardhead,suit)
    else writeln(cardvalue,suit);
   end;

   




 { procedure deal;
  begin
   dealercount:=0;
   playercount:=0;
   gotoxy(25,1);
   writeln('You have these cards');
   gotoxy(50,1);
   writeln('Computer has these cards');
   {begin?}

   {this deals cards to the computer
   gotoxy(50,4);
   dcard;
   ccount:=ccount+1;
   writeln('Card is face down');
   rctotal:=cardvalue;

   gotoxy(50,5);
   dcard;
   ctotal:=ctotal+cardvalue;
   show;

   {this deals cards to player
   gotoxy(25,4);
   dcard;
   playercount:=playercount+1;
   show;
   ptotal:=ptotal+cardvalue; {first card drawn for the player

   gotoxy(25,5);
   dcard;
   playercount:=playercount+1;
   show;
   ptotal:=ptotal+cardvalue;    }

   procedure dtop; {deal to player}
    begin
     if pcount=1 then gotoxy(25,3);
     if pcount=2 then gotoxy(25,4);
     if pcount=3 then gotoxy(25,5);
     if pcount=4 then gotoxy(25,6);
     if pcount=5 then gotoxy(25,7);
     dcard;
     pcount:=pcount+1;
     show;
     ptotal:=ptotal+cardvalue;
     end;

   procedure dtoc; {deal to computer}
     begin
     if ccount=1 then
     begin gotoxy(50,3);
     writeln('this card is face down');
     ccount:=ccount+1;
     dcard;
     rctotal:=cardvalue;
     end
     else
     begin
     if ccount=2 then gotoxy(50,4);
     if ccount=3 then gotoxy(50,5);
     if ccount=4 then gotoxy(50,6);
     if ccount=5 then gotoxy(50,7);
     dcard;
     ccount:=ccount+1;
     show;
     ctotal:=ctotal+cardvalue;
     end;
     end;

  procedure phit; {player hit}
  begin
  pdone:=false;
  gotoxy(1,15);
  write('Do you want another card?');
  read(response);
  if response in ['Y','y']
  then
   dtop
  else pdone:=true;
  if pdone=true and (cdone=true) then alldone:=true;
  end;
   
  procedure chit; {computer hit}
  begin
  if rctotal<17
  then dtoc
  else cdone:=true;
  if pdone=true and (cdone=true) then alldone:=true;
  end;

  procedure totals; {writes totals}
  begin
  gotoxy(20,10);
  writeln('Player''s total of cards',ptotal);
  gotoxy(50,10);
  write('computers total is', ctotal);
  end;

  




     {

     begin
      if ccount=5 or pcount=5
      then
       begin
        if ccount=5
        then cdone=true
        else cdone=false;
       end
      else
       begin
        if (ctotal=21) or (ptotal=21)
        then
         begin 
          if (ctotal=21) and (ccount=2)
          then cdone=true;
          else
           begin
           if (ptotal=21) and (ctotal=2)
           then cdone=false;
           else
            begin
             if dcount=21


                        }











  procedure plose; {player loses}
  begin
   clrscr;
   gotoxy(4,8);
   writeln('                                                               ');
   writeln('   Y   Y   OOO   U   U       L     OOO    SSS  EEEE  O  O      ');
   writeln('   Y   Y  O   O  U   U       L    O   O  S     E     O  O      ');
   writeln('    Y Y   O   O  U   U       L    O   O  SSSS  EEEE  O  O      ');
   writeln('     Y    O   O  U   U       L    O   O     S  E               ');
   writeln('     Y     OOO    UUU        LLLL  OOO   SSS   EEEE  O  O      ');
   writeln('                                                               ');
   writeln('                                                               ');
   writeln('                      GOOD DAY, SIR!!                          ');
   writeln('                                                               ');
  end;

  procedure pwin; {player wins}
   begin
    clrscr;
    gotoxy(4,8);
    writeln('                                                               ');
    writeln('   Y   Y   OOO   U   U      W       W   III   NN   N  O  O     ');
    writeln('   Y   Y  O   O  U   U      W   W   W    I    N N  N  O  O     ');
    writeln('    Y Y   O   O  U   U      W   W   W    I    N  N N  O  O     ');
    writeln('     Y    O   O  U   U       W W W W     I    N   NN           ');
    writeln('     Y     OOO    UUU         W   W     III   N    N  O  O     ');
    writeln('                                                               ');
    writeln('                                                               ');
    writeln('             Against all odds, you beat the machine            ');
    writeln('                                                               ');
   end;

  procedure card; {draws the card on the screen}
   begin          {use a gotoxy before this procedure}
    if cardface>=11
    then 
     begin
     writeln(' _________ ');
     writeln('| ',cardhead:5,'   |');
     writeln('|         |');
     writeln('|         |');
     writeln('|         |');
     writeln('|',suit:9,'|');
     writeln('|         |');
     writeln('|         |');
     writeln('|         |');
     writeln('|   ',cardhead:5,'|');
     writeln('|_________|');
     end
    else 
     begin
     writeln(' _________ ');
     writeln('| ',cardvalue:2,'      |');
     writeln('|         |');
     writeln('|         |');
     writeln('|         |');
     writeln('|',suit:9,'|');
     writeln('|         |');
     writeln('|         |');
     writeln('|         |');
     writeln('|      ',cardvalue:2,' |');
     writeln('|_________|');
     end;
   end;

  procedure cardfd; {draws a dummy face down card}
   begin            {use a gotoxy before this procedure}
     writeln(' _________ ');
     writeln('|+++++++++|');
     writeln('|+++++++++|');
     writeln('|+++++++++|');
     writeln('|+++++++++|');
     writeln('|+++++++++|');
     writeln('|+++++++++|');
     writeln('|+++++++++|');
     writeln('|+++++++++|');
     writeln('|+++++++++|');
     writeln('|_________|');
   end;






   procedure whowins; {the balckjack playing paart}
   begin
    repeat
    dtoc;
    totals;
    until ccount=3;
    begin
    cdone:=false;
    if (ctotal>21) or (ptotal>21)
    then
     begin
      if ptotal>21
      then cdone:=true
      else cdone:=false;
     end
    else
     if (ptotal=21) and (pcount=2) and (ctotal<>21)
     then
      begin
       cdone:=false;
       pwin;
       gotoxy(36,23);
       writeln('BlackJack!');
      end
     else
      if ctotal=21
      then cdone:=true
      else
       if ptotal>ctotal
       then cdone:=false
       else
        if ctotal>ptotal
        then cdone:=true
        else
         if ptotal=ctotal
         then
          begin
          cdone:=true;
          plose;
          end
         else
          begin
          cdone:=false;
          pwin;
          end;
          end;
          end;








  procedure init;
   begin
    clrscr;
    pdone:=false;
    cdone:=false;
    ccount:=1;
    pcount:=1;
    ctotal:=0;
    ptotal:=0;
    deckf;
   end;







  begin {actual program}
  writeln('               Welcome To BlackJack');
  writeln('Do you want to play blackjack ?');
  readln(response);
  if response in ['Y','y']
  then
   begin {this is blackjack}
   repeat
   init;
   dtop;
   dtop;
   whowins;

   {
   while alldone=false do
    begin
     if cdone=false then chit;
     totals;
     if pdone=false then phit;
     totals;
    end;
   whowins;}
gotoxy(1,18);
writeln('Do you want to do this again?');
readln(response);
until response in ['n','N'];
end;
donewincrt;
end.