{lucas doyLE}
PROGRAM PALINDROMES (INPUT, OUTPUT);   
USES WINCRT;
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
READLN;
DONEWINCRT;
END.