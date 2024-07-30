1 REM BASIC-Cowsay  Copyright (C) 2024  Tomas Gutierrez L. (0x00)
2 REM This program is licensed under GPLv3 or later.

10 REM Cowsay written in BASIC for the TC 2048 (ZX Spectrum 48K clone)
20 LET B$ = " ______________________________ "
30 LET D$ = " ------------------------------ "
40 INPUT "Text for the cow to say: "; LINE W$
50 IF LEN W$ < 29 THEN GO SUB 1000
60 IF LEN W$ > 28 AND LEN W$ < 57 THEN GO SUB 1200
70 IF LEN W$ > 56 THEN GO SUB 1400
80 PRINT B$
90 PRINT S$
100 PRINT D$
110 GO SUB 4000
120 STOP

1000 REM Messages less than 29 characters long
1010 LET S$ = "< " + W$ + " >"
1020 LET B$ = " "
1030 LET D$ = " "
1040 FOR n=1 TO LEN W$ + 2
1050 LET D$ = D$ + "-"
1060 LET B$ = B$ + "_"
1070 NEXT n
1080 RETURN

1200 REM Messages longer than 28 and less than 57 characters long
1210 LET S$ = "/ " + W$(1 TO 28) + " \" + "\ " + W$(29 TO LEN W$)
1220 FOR n=1 TO 56 - LEN W$
1230 LET S$ = S$ + " "
1240 NEXT n
1250 LET S$ = S$ + " /"
1260 RETURN

1400 REM Messages longer than 56 characters long
1410 LET S$ = "/ " + W$(1 TO 28) + " \"
1420 FOR n=1 TO INT(LEN W$/28) - 1
1430 LET S$ = S$ + "| " + W$((28*n)+1 TO (28*(n+1))) + " |"
1440 NEXT n
1450 LET S$ = S$ + "\ " + W$(29*INT(LEN W$/28)-2 TO LEN W$)
1460 FOR n=1 TO 28 - (LEN W$ - 29*(INT(LEN W$/28))+3)
1470 LET S$ = S$ + " "
1480 NEXT n
1490 LET S$ = S$ + " /"
1500 RETURN

4000 REM Cow art
4010 PRINT "   \  ^__^"
4020 PRINT "    \ (oo)\_______"
4030 PRINT "      (__)\       )\/\"
4040 PRINT "          ||----w |"
4050 PRINT "          ||     ||"
4060 RETURN

4100 REM Tux art
4110 PRINT "     \  .--."
4120 PRINT "      \|o_o |"
4130 PRINT "       |:_/ |"
4140 PRINT "      //   \ \"
4150 PRINT "     (|     | )"
4160 PRINT "    /'\_   _/'\"
4170 PRINT "    \___)=(___/"
4180 RETURN

4200 REM Llama art
4210 PRINT "    \"
4220 PRINT "     \ (\/)"
4230 PRINT "      (_o |"
4240 PRINT "       /  |"
4250 PRINT "       \  \______"
4260 PRINT "        \        )o"
4270 PRINT "         /|----- |"
4280 PRINT "         \|     /|"
4290 RETURN

4300 REM Earth art
4310 PRINT "       \     _____"
4320 PRINT "        \ .-'.  ':'-."
4330 PRINT "        .''::: .:    '."
4340 PRINT "       /   :::::'      \"
4350 PRINT "      ;.    ':' '       ;"
4360 PRINT "      |       '..       |"
4370 PRINT "      ; '      ::::.    ;"
4380 PRINT "       \       '::::   /"
4390 PRINT "        '.      :::  .'"
4400 PRINT "          '-.___'_.-'"
4410 RETURN