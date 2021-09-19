0 ' //// aglos by bestiarum 2018 ////
1 ' ---- tela inicial ----
2 SCREEN2,3 : GO=0
3 OPEN "GRP:" FOROUTPUTAS#1
10 COLOR 15 : BLOAD"START_03.SC2",S : PLAY"o2cdeedceedd"
14 '
15 ' ---- mensagem start ----
16 IF STRIG(0)=-1 THEN GOTO 18
17 GOTO 16
18 LINE (25,158)-(230,190),6,BF : PSET (36,166),1 : PRINT#1,"Press (H) for game help" : PSET (36,179),1 : PRINT#1,"Press (SPACE) and start" ' // bloco texto acao 
19 A$="" : A$=INKEY$
20 IF STRIG(0)=-1 THEN GOTO 50 ' // ir para mapa
21 IF A$="H" OR A$="h" THEN LOAD"TUTO.BAS",R
22 GOTO 19
33 '
34 ' ---- fundo ----
50 CLS
51 LINE (0,0)-(256,192),6,BF
52 LINE (1,1)-(254,190),1,BF
70 '
72 ' ---- matriz sprites ----
75 IF GO=0 THEN GOTO 80
76 IF GO=1 THEN GOTO 100
80 PSET (65,95),1 : PRINT#1,"loading game..."
81 FOR N=1 TO 17
82 S$=""
83 FOR I=1 TO 32
84 READ B$
85 B=VAL(B$)
86 S$=S$+CHR$(B)
87 NEXT I
88 SPRITE$(N)=S$
89 NEXT N
91 ' 
92 ' ---- intro ----
93 ' 
100 ' //// matriz cen /////
101 D1$="R8D8L8U8BD2BR2R4D4L4U4BD1BR1R2" : LINE (23,23)-(233,175),1,BF ' // bloquinhos - fundo preto
102 FOR I=9 TO 246 STEP 10 ' // criar parede do topo e baixo
103 PSET(I,8),14 : DRAW D1$
104 PSET(I,176),14 : DRAW D1$
105 NEXT I
106 FOR I=18 TO 172 STEP 10 ' // criar parede esquerda e direita
107 PSET(9,I),14 : DRAW D1$
108 PSET(239,I),14 : DRAW D1$
109 NEXT I
110 '
112 PSET (30,27),1 : PRINT#1,"In the palaces of Aglos,"
113 PSET (30,39),1 : PRINT#1,"there resides the one"
114 PSET (30,51),1 : PRINT#1,"that should not be"
115 PSET (30,63),1 : PRINT#1,"remembered. His cruel"
116 PSET (30,75),1 : PRINT#1,"love is the reason for"
117 PSET (30,87),1 : PRINT#1,"the misfortunes of the"
118 PSET (30,99),1 : PRINT#1,"world of Acad. All the"
119 PSET (30,111),1 : PRINT#1,"others perished, you are"
120 PSET (30,123),1 : PRINT#1,"the last warrior, the"
121 PSET (30,135),1 : PRINT#1,"last who knows the truth."
122 PSET (30,147),1 : PRINT#1,"The lord of all things"
123 PSET (30,159),1 : PRINT#1,"still sleeps. There will"
124 '
150 IF STRIG(0)=-1 THEN GOTO 158
151 GOTO 150
155 '
158 LINE (23,23)-(233,175),1,BF
159 '
160 ' //// intro 02 ////
161 PSET (30,27),1 : PRINT#1,"be no other chance. Your"
162 PSET (30,39),1 : PRINT#1,"sword was anointed. The"
163 PSET (30,51),1 : PRINT#1,"heart of God is exposed."
164 PSET (30,63),1 : PRINT#1,"There is no turning back."
165 PSET (30,75),1 : PRINT#1,"100 men entered these"
166 PSET (30,87),1 : PRINT#1,"halls, only one lives."
167 PSET (30,99),1 : PRINT#1,"Legions of evil guard"
168 PSET (30,111),1 : PRINT#1,"the way. Choose your"
169 PSET (30,123),1 : PRINT#1,"enemies wisely. God"
170 PSET (30,135),1 : PRINT#1,"must die, or the world"
171 PSET (30,147),1 : PRINT#1,"will cease to exist."
180 IF STRIG(0)=-1 THEN GOTO 195 ' // ir para mapa
186 GOTO 180
190 ' 
191 ' ---- mapa ----
192 ' 
195 CE=0 ' // valor inicial do cenario
200 BLOAD"castelo.SC2",S ' // mapa
201 FOR I=1 TO 40 : NEXT I : LINE (220,180)-(210,175),14
202 FOR I=1 TO 40 : NEXT I : LINE (210,175)-(200,180),14
203 FOR I=1 TO 40 : NEXT I : LINE (200,180)-(190,175),14
204 FOR I=1 TO 40 : NEXT I : LINE (190,175)-(180,180),14
205 FOR I=1 TO 40 : NEXT I : LINE (180,180)-(144,166),14
206 FOR I=1 TO 40 : NEXT I : LINE (144,166)-(128,148),14
207 FOR I=1 TO 40 : NEXT I : LINE (128,148)-(118,135),14
208 FOR I=1 TO 40 : NEXT I : LINE (118,135)-(82,134),14
209 FOR I=1 TO 40 : NEXT I : LINE (82,134)-(67,131),14
210 FOR I=1 TO 40 : NEXT I : LINE (67,131)-(50,116),14
211 FOR I=1 TO 40 : NEXT I : LINE (50,116)-(40,90),14
212 FOR I=1 TO 40 : NEXT I : LINE (40,90)-(70,110),14
213 FOR I=1 TO 40 : NEXT I : LINE (70,110)-(100,120),14
214 FOR I=1 TO 40 : NEXT I : LINE (100,120)-(80,90),14
215 FOR I=1 TO 40 : NEXT I : LINE (80,90)-(60,70),14
216 FOR I=1 TO 40 : NEXT I : LINE (60,70)-(70,60),14
217 FOR I=1 TO 40 : NEXT I : LINE (70,60)-(80,50),14
218 FOR I=1 TO 40 : NEXT I : LINE (80,50)-(70,40),14
219 FOR I=1 TO 40 : NEXT I : LINE (70,40)-(80,30),14
220 FOR I=1 TO 40 : NEXT I : LINE (80,30)-(76,22),14
260 ' //// linhas roxas ////
261 FOR I=1 TO 120 : NEXT I 
262 IF CE > 0 THEN FOR I=1 TO 120 : NEXT I : LINE (220,180)-(210,175),4
263 IF CE > 1 THEN FOR I=1 TO 120 : NEXT I : LINE (210,175)-(200,180),4
264 IF CE > 2 THEN FOR I=1 TO 120 : NEXT I : LINE (200,180)-(190,175),4
265 IF CE > 3 THEN FOR I=1 TO 120 : NEXT I : LINE (190,175)-(180,180),4
266 IF CE > 4 THEN FOR I=1 TO 120 : NEXT I : LINE (180,180)-(144,166),4
267 IF CE > 5 THEN FOR I=1 TO 120 : NEXT I : LINE (144,166)-(128,148),4
268 IF CE > 6 THEN FOR I=1 TO 120 : NEXT I : LINE (128,148)-(118,135),4
269 IF CE > 7 THEN FOR I=1 TO 120 : NEXT I : LINE (118,135)-(82,134),4
270 IF CE > 8 THEN FOR I=1 TO 120 : NEXT I : LINE (82,134)-(67,131),4
271 IF CE > 9 THEN FOR I=1 TO 120 : NEXT I : LINE (67,131)-(50,116),4
272 IF CE > 10 THEN FOR I=1 TO 120 : NEXT I : LINE (50,116)-(40,90),4
273 IF CE > 11 THEN FOR I=1 TO 120 : NEXT I : LINE (40,90)-(70,110),4
274 IF CE > 12 THEN FOR I=1 TO 120 : NEXT I : LINE (70,110)-(100,120),4
275 IF CE > 13 THEN FOR I=1 TO 120 : NEXT I : LINE (100,120)-(80,90),4
276 IF CE > 14 THEN FOR I=1 TO 120 : NEXT I : LINE (80,90)-(60,70),4
277 IF CE > 15 THEN FOR I=1 TO 120 : NEXT I : LINE (60,70)-(70,60),4
278 IF CE > 16 THEN FOR I=1 TO 120 : NEXT I : LINE (70,60)-(80,50),4
279 IF CE > 17 THEN FOR I=1 TO 120 : NEXT I : LINE (80,50)-(70,40),4
280 IF CE > 18 THEN FOR I=1 TO 120 : NEXT I : LINE (70,40)-(80,30),4
281 IF CE > 19 THEN FOR I=1 TO 120 : NEXT I : LINE (80,30)-(76,22),4
319 D2$="E3F3G3H3R3D3U6"
320 IF CE=0 THEN PSET(218,178),4 : DRAW D2$ ' // bullets 
321 IF CE=1 THEN PSET(208,173),4 : DRAW D2$ 
322 IF CE=2 THEN PSET(198,178),4 : DRAW D2$ 
323 IF CE=3 THEN PSET(184,174),4 : DRAW D2$ 
324 IF CE=4 THEN PSET(176,180),4 : DRAW D2$ 
325 IF CE=5 THEN PSET(140,164),4 : DRAW D2$ 
326 IF CE=6 THEN PSET(124,147),4 : DRAW D2$ 
327 IF CE=7 THEN PSET(116,134),4 : DRAW D2$ 
328 IF CE=8 THEN PSET(80,132),4 : DRAW D2$ 
329 IF CE=9 THEN PSET(65,129),4 : DRAW D2$ 
330 IF CE=10 THEN PSET(47,112),4 : DRAW D2$ 
331 IF CE=11 THEN PSET(39,92),4 : DRAW D2$ 
332 IF CE=12 THEN PSET(71,110),4 : DRAW D2$ 
333 IF CE=13 THEN PSET(99,118),4 : DRAW D2$ 
334 IF CE=14 THEN PSET(74,88),4 : DRAW D2$ 
335 IF CE=15 THEN PSET(59,70),4 : DRAW D2$ 
336 IF CE=16 THEN PSET(70,58),4 : DRAW D2$ 
337 IF CE=17 THEN PSET(78,48),4 : DRAW D2$ 
338 IF CE=18 THEN PSET(70,38),4 : DRAW D2$ 
339 IF CE=19 THEN PSET(80,28),4 : DRAW D2$
340 IF CE=20 THEN PSET(74,20),7 : DRAW D2$ 
398 LINE (5,165)-(117,180),1,BF : PSET (10,170),1 : PRINT#1,"Your Progress"
400 IF CE > 7 THEN NI=2 ' // mudando de nivel
401 IF CE > 12 THEN NI=3
402 CE=CE+1
405 IF CE=21 THEN GOTO 4410
417 IF STRIG(0)=-1 AND CE=1 THEN PLAY"T250O2AF" : GOTO 424 ' // ir para variaveis
418 IF STRIG(0)=-1 AND CE>1 THEN PLAY"T250O2AF" : GOTO 800 ' // ir para escolha de cenario depois do cenario atualizar
419 GOTO 405
420 ' 
421 ' ---- variaveis ----
422 ' 
423 ' //// jogador ////
424 L=45 : LR=L : A=1 : D=1 : GM=10 : BM=10 : YM=10 : ES=1  ' // vida - referencia da vida - ataque - defesa - green m - blue m - red m
425 ' //// gerais ////
426 RA=1 : R1=1 : R2=1 : R3=1 : NI=1 : TM=1 ' // ramdom ameaça - cenario atual/progresso(até 20) - nivel de dificuldade - tipo de inimigo
430 GOTO 800 ' // ir para escolha de cenario
500 ' 
501 ' ---- loop de cen ----
503 ' 
505 CLS : LINE (0,0)-(256,192),6,BF : LINE (1,1)-(254,190),1,BF
510 LINE (0,0)-(256,16),1,BF : LINE (0,16)-(256,16),14 : PSET (4,4),1 : COLOR 7 : PRINT#1,"L";L : COLOR 15 : PSET (50,4),1 : PRINT#1,"A";A;"D";D;"G";GM;"B";BM;"Y";YM;
512 ' //// matriz criadora de cen ////
522 FOR I=34 TO 226 STEP 20 ' // criar parede do topo e baixo
523 PSET(I,176),CO : DRAW D1$
524 NEXT I
525 FOR I=18 TO 172 STEP 20 ' // criar parede esquerda e direita
526 PSET(9,I),CO : DRAW D1$
527 PSET(239,I),CO : DRAW D1$
528 NEXT I
530 GOTO 1300 ' // enfrentar desafio
630 IF STRIG(0)=-1 THEN GOTO 200 ' // ir para mapa
635 GOTO 630
640 ' 
800 ' ---- loop de escolha de cenario ----
805 ' 
810 CLS : LINE (0,0)-(256,192),6,BF : LINE (1,1)-(254,190),1,BF ' // fundo
815 PSET (64,176),1 : PRINT#1,"Loading paths!"
820 WW=RND(-TIME) ' // embaralha ramdom
830 R1=INT(7*RND(1)+1) : R2=INT(7*RND(1)+1) : R3=INT(7*RND(1)+1) ' //// rolador aleatorio - cores
904 IF R1=1 THEN R1=14 : GOTO 911
905 IF R1=2 THEN R1=4 : GOTO 911
906 IF R1=3 THEN R1=7 : GOTO 911
907 IF R1=4 THEN R1=2 : GOTO 911
908 IF R1=5 THEN R1=9 : GOTO 911
909 IF R1=6 THEN R1=10 : GOTO 911
910 IF R1=7 THEN R1=13 : GOTO 911
911 IF R2=1 THEN R2=14 : GOTO 918
912 IF R2=2 THEN R2=4 : GOTO 918
913 IF R2=3 THEN R2=7 : GOTO 918
914 IF R2=4 THEN R2=2 : GOTO 918
915 IF R2=5 THEN R2=9 : GOTO 918
916 IF R2=6 THEN R2=10 : GOTO 918
917 IF R2=7 THEN R2=13 : GOTO 918
918 IF R3=1 THEN R3=14 : GOTO 925
919 IF R3=2 THEN R3=4 : GOTO 925
920 IF R3=3 THEN R3=7 : GOTO 925
921 IF R3=4 THEN R3=2 : GOTO 925
922 IF R3=5 THEN R3=9 : GOTO 925
923 IF R3=6 THEN R3=10 : GOTO 925
924 IF R3=7 THEN R3=13 : GOTO 925
925 BLOAD"DOOR2.SC2",S 
930 LINE (20,148)-(55,162),4,BF ' // bloco esquerda
931 LINE (100,148)-(155,162),4,BF ' // bloco centro
932 LINE (200,148)-(240,162),4,BF ' // bloco direita
935 LINE (40,168)-(200,188),1,BF ' // texto
940 PSET (56,176),1 : PRINT#1,"Choose your path!"
941 PSET (23,152),1 : PRINT#1,"left"
942 PSET (105,152),1 : PRINT#1,"center"
943 PSET (203,152),1 : PRINT#1,"right"
945 IF NI=1 THEN T1=INT(3*RND(1)+9) : T2=INT(3*RND(1)+9) : T3=INT(3*RND(1)+9) : PUTSPRITE 0,(25,100),R1,T1 : PUTSPRITE 1,(115,100),R2,T2 : PUTSPRITE 2,(205,100),R3,T3 ' // carregando desafios na tela
946 IF NI=2 THEN T1=INT(3*RND(1)+11) : T2=INT(3*RND(1)+11) : T3=INT(3*RND(1)+11) : PUTSPRITE 0,(25,100),R1,T1 : PUTSPRITE 1,(115,100),R2,T2 : PUTSPRITE 2,(205,100),R3,T3 ' // carregando desafios na tela
947 IF NI=3 THEN T1=INT(3*RND(1)+13) : T2=INT(3*RND(1)+13) : T3=INT(3*RND(1)+13) : PUTSPRITE 0,(25,100),R1,T1 : PUTSPRITE 1,(115,100),R2,T2 : PUTSPRITE 2,(205,100),R3,T3 ' // carregando desafios na tela
971 ' //// escolha de direcao ////
975 IF STICK(0)=3 THEN CO=R3 : TM=T3 : PUTSPRITE 0,(0,0),0,T1 : PUTSPRITE 1,(0,0),0,T2 : PUTSPRITE 2,(0,0),0,T3 : GOTO 505 ' // esquerda - vai para cenario
980 IF STICK(0)=7 THEN CO=R1 : TM=T1 : PUTSPRITE 0,(0,0),0,T1 : PUTSPRITE 1,(0,0),0,T2 : PUTSPRITE 2,(0,0),0,T3 : GOTO 505 ' // direita - vai para cenario
985 IF STICK(0)=1 THEN CO=R2 : TM=T2 : PUTSPRITE 0,(0,0),0,T1 : PUTSPRITE 1,(0,0),0,T2 : PUTSPRITE 2,(0,0),0,T3 : GOTO 505 ' // cima - vai para cenario
990 GOTO 975
1000 ' 
1001 ' ---- loop de subir nivel ----
1003 ' //// etapa 01 ////
1005 FOR I=0 TO 12
1006 PUTSPRITE I,(0,0),0,I
1007 NEXT I
1008 CLS : LINE (0,0)-(256,192),6,BF : LINE (1,1)-(254,190),1,BF
1009 LINE (25,138)-(230,170),6,BF ' // fundo e caixa vermelha
1010 PSET (60,150),1 : PRINT#1,"Raise Your Power!"
1011 RG=(4)*NI ' // life regeneração
1012 L=L+RG ' // life regeneração
1015 IF STRIG(0)=-1 THEN GOTO 1022 ' // ir para proxima etapa
1020 GOTO 1015
1021 ' //// etapa 02 ////
1022 A$="" ' // zerando sring - movendo em caso de experiencia acabar
1023 IF A>10 THEN A=10 : EX=EX+1
1024 IF L>90 THEN L=90 : EX=EX+1
1025 IF D>10 THEN D=10 : EX=EX+1
1026 IF LR>90 THEN LR=90
1027 IF L>LR THEN L=LR : EX=EX+1
1030 LINE (35,30)-(219,120),14,BF : LINE (36,31)-(218,119),1,BF : PSET (45,40),1 : COLOR 6 : PRINT#1,"EX:";EX : PSET (115,40),1 : COLOR 7 : PRINT#1,"L:+";RG : COLOR 15 ' // experiencia eh IA do inimigo
1035 PSET (45,50),1 : PRINT#1,"Life(L) - Max 90" : PSET (45,60),1 : PRINT#1,"Attack(A) - Max 10" : PSET (45,70),1 : PRINT#1,"Defense(D) - Max 10"
1036 PSET (45,80),1 : PRINT#1,"Grey Magic(G)" : PSET (45,90),1 : PRINT#1,"Blue Magic(B)" : PSET (45,100),1 : PRINT#1,"Yellow Magic(Y)"
1040 LINE (25,138)-(230,170),6,BF : PSET (66,144),1 : PRINT#1,"Press Letter to" : PSET (79,160),1 : PRINT#1,"Raise Level"
1045 LINE (0,0)-(256,16),1,BF : LINE (0,16)-(256,16),14 : PSET (4,4),1 : COLOR 7 : PRINT#1,"L";L : COLOR 15 : PSET (50,4),1 : PRINT#1,"A";A;"D";D;"G";GM;"B";BM;"Y";YM; ' // ficha player
1050 A$="" : A$=INKEY$ : IF EX < 1 THEN GOTO 1150
1055 IF A$="L" OR A$="l" THEN L=L+4 : EX=EX-1 : LR=LR+4 : GOTO 1022 ' // life - atualizar valor de refencia do life
1060 IF A$="A" OR A$="a" THEN A=A+1 : EX=EX-1 : GOTO 1022 ' // at
1065 IF A$="D" OR A$="d" THEN D=D+1 : EX=EX-1 : GOTO 1022 ' // def
1070 IF A$="G" OR A$="g" THEN GM=GM+1 : EX=EX-1 : GOTO 1022 ' // grey m
1075 IF A$="B" OR A$="b" THEN BM=BM+1 : EX=EX-1 : GOTO 1022 ' // blue m
1080 IF A$="Y" OR A$="y" THEN YM=YM+1 : EX=EX-1 : GOTO 1022 ' // yellow m
1095 GOTO 1050
1149 ' //// fim ////
1150 LINE (25,138)-(230,170),6,BF ' // bloco texto acao 1
1151 LINE (0,0)-(256,16),1,BF : LINE (0,16)-(256,16),14 : PSET (4,4),1 : COLOR 7 : PRINT#1,"L";L : COLOR 15 : PSET (50,4),1 : PRINT#1,"A";A;"D";D;"G";GM;"B";BM;"Y";YM; ' // ficha player
1155 PSET (50,150),1 : PRINT#1,"Press Space to Leave"
1160 IF STRIG(0)=-1 THEN GOTO 200 ' // ir para mapa
1165 GOTO 1160
1295 '
1300 ' ---- loop enfrentar desafio ----
1305 '
1306 ' //// carrega os inimigos conforme seus níveis ////
1308 IF CE>20 THEN : LINE (31,30)-(125,80),14,BF : LINE (32,31)-(124,79),1,BF : GOTO 1715
1310 IL=1 : IA=1 : IP=1 : SU=0 : LINE (31,30)-(125,80),14,BF : LINE (32,31)-(124,79),1,BF ' // life - ataque - ponto fraco - screen update da ficha - caixa de linhas
1315 IF NI=1 AND TM=9 THEN IL=INT(1*RND(1)+8+CO) : IA=2 : IP=INT(10*RND(1)+1) : EX=IA-1 : NM$="Archon" : PSET (37,95),1 : PRINT#1,NM$ ' // monstro 9 - NI 1 -experiencia eh igual ao ataque
1320 IF NI=1 AND TM=10 THEN IL=INT(1*RND(1)+14+CO) : IA=3 : IP=INT(10*RND(1)+1) : EX=IA-1 : NM$="Hunter" : PSET (37,95),1 : PRINT#1,NM$ ' // monstro 10
1325 IF NI=1 AND TM=11 THEN IL=INT(1*RND(1)+18+CO) : IA=3 : IP=INT(10*RND(1)+1) : EX=IA-1 : NM$="Spart" : PSET (37,95),1 : PRINT#1,NM$ ' // monstro 11
1330 IF NI=1 AND TM=12 THEN IL=INT(1*RND(1)+24+CO) : IA=4 : IP=INT(10*RND(1)+1) : EX=IA-1 : NM$="Gorgo" : PSET (37,95),1 : PRINT#1,NM$ ' // monstro 12
1335 IF NI=2 AND TM=11 THEN IL=INT(1*RND(1)+60+CO) : IA=4 : IP=INT(10*RND(1)+1) : EX=IA-2 : NM$="Cisce" : PSET (37,95),1 : PRINT#1,NM$ ' // monstro 11 - NI 2
1340 IF NI=2 AND TM=12 THEN IL=INT(1*RND(1)+66+CO) : IA=5 : IP=INT(10*RND(1)+1) : EX=IA-2 : NM$="Gorgo" : PSET (37,95),1 : PRINT#1,NM$ ' // monstro 12
1345 IF NI=2 AND TM=13 THEN IL=INT(1*RND(1)+72+CO) : IA=5 : IP=INT(10*RND(1)+1) : EX=IA-2 : NM$="Eye" : PSET (37,95),1 : PRINT#1,NM$ ' // monstro 13
1350 IF NI=2 AND TM=14 THEN IL=INT(1*RND(1)+78+CO) : IA=6 : IP=INT(10*RND(1)+1) : EX=IA-2 : NM$="Serphys" : PSET (37,95),1 : PRINT#1,NM$ ' // monstro 14
1355 IF NI=3 AND TM=13 THEN IL=INT(1*RND(1)+84+CO) : IA=6 : IP=INT(10*RND(1)+1) : EX=IA-2 : NM$="Eye" : PSET (37,95),1 : PRINT#1,NM$ ' // monstro 13 - NI 3
1360 IF NI=3 AND TM=14 THEN IL=INT(1*RND(1)+90+CO) : IA=6 : IP=INT(10*RND(1)+1) : EX=IA-2 : NM$="Serphys" : PSET (37,95),1 : PRINT#1,NM$ ' // monstro 14
1365 IF NI=3 AND TM=15 THEN IL=INT(1*RND(1)+96+CO) : IA=7 : IP=INT(10*RND(1)+1) : EX=IA-3 : NM$="Sentinel" : PSET (37,95),1 : PRINT#1,NM$ ' // monstro 13 - NI 3
1370 IF NI=3 AND TM=16 THEN IL=INT(1*RND(1)+99+CO) : IA=7 : IP=INT(10*RND(1)+1) : EX=IA-3 : NM$="Shadow" : PSET (37,95),1 : PRINT#1,NM$ ' // monstro 14
1710 '
1715 SU=1 ' // controle de tela
1720 PUTSPRITE 1,(60,39),CO,TM ' // sprite inimigo
1725 IF L < 1 THEN GOTO 3655 ' // checar se heroi morreu
1726 IF IL < 1 AND TM>16 THEN LOAD"END.BAS",R ' // checar se chefao morreu
1727 IF IL < 1 THEN GOTO 3610 ' // checar se monstro morreu
1730 '
1735 IF SU=1 THEN GOSUB 3510 ' // ativa botoes de acao
1740 IF SU=0 THEN GOTO 1715 ' // ativa o controle da tela
3005 '
3010 ' ---- enemy attack ----
3015 '
3016 ' //// enemy attack ////
3017 RM=0
3020 FOR I=1 TO IA ' // rolagem de acordo com o nivel do inimigo
3025 RM=RM+(INT(6*RND(1)+1))
3030 NEXT I
3035 IF RM<0 THEN RM=0 
3040 RF=RM-D
3041 IF RF<0 THEN RF=0 
3045 L=L-RF ' // calculando dano no inimigo
3046 IF L>LR THEN L=LR ' // equalizar life
3047 ' //// ficha monstro e heroi
3048 IF CE>20 THEN : LINE (31,82)-(125,130),14,BF : LINE (32,83)-(124,129),1,BF : PSET (36,110),1 : PRINT#1,"L";IL : PSET (37,95),1 : PRINT#1,NM$ : GOTO 3054 ' // chefe
3053 LINE (31,82)-(125,130),14,BF : LINE (32,83)-(124,129),1,BF : PSET (36,110),1 : PRINT#1,"L";IL;"Hit";RM : PSET (37,95),1 : PRINT#1,NM$ ' // monstro
3054 LINE (130,82)-(224,130),14,BF : LINE (131,83)-(223,129),1,BF : PSET (149,110),1 : PSET (135,110),1 : PRINT#1,"Hit";RE+SM : PSET (135,95),1 : PRINT#1,"Player" : SM=0 ' // player - zerando special magic 
3055 GOSUB 3635 ' // atualizar fichas/caixinhas - heroi e monstro
3110 RETURN ' // ir ataque
3500 '
3505 ' ---- atack loop ----
3506 '
3507 ' //// botoes de ataque //// 
3510 LINE (25,138)-(230,170),6,BF ' // texto acao 1
3515 PSET (78,142),1 : PRINT#1,"Your Action?"
3520 PSET (40,160),1 : PRINT#1,"Attack(A)/Magic(G-B-Y)"
3525 A$="" : A$=INKEY$
3530 IF A$="A" OR A$="a" THEN PLAY"T250O2F" : GOSUB 4009 ' // ataque espada
3535 IF GM>0 THEN IF A$="G" OR A$="g" THEN PLAY"T250O2F" : GOSUB 4155 ' // grey m
3540 IF BM>0 THEN IF A$="B" OR A$="b" THEN PLAY"T250O2F" : GOSUB 4215 ' // blue m
3545 IF YM>0 THEN IF A$="Y" OR A$="y" THEN PLAY"T250O2F" : GOSUB 4275 ' // yellow m
3549 IF SU=0 THEN RETURN ' // ir para inimigo - 1740
3550 GOTO 3525
3600 '
3605 ' //// vitoria ////
3610 PUTSPRITE 0,(59,42),6,5 ' // morte do inimigo - sprite cruz
3611 LINE (25,138)-(230,170),6,BF ' // bloco texto acao 1
3612 PSET (45,150),1 : PRINT#1,"Victory! Press Space!"
3615 IF STRIG(0)=-1 THEN GOTO 1005 ' // ir para mapa
3620 GOTO 3615
3625 '
3630 ' //// atualizador de ficha principal ////
3635 LINE (0,0)-(256,16),1,BF : LINE (0,16)-(256,16),14 : PSET (4,4),1 : COLOR 7 : PRINT#1,"L";L : COLOR 15 : PSET (50,4),1 : PRINT#1,"A";A;"D";D;"G";GM;"B";BM;"Y";YM; ' // ficha player
3645 RETURN ' // ir para ataque inimigo - 3055
3650 '
3655 ' //// game over ////
3660 BLOAD"GAMEOVER.SC2",S 
3665 IF STRIG(0)=-1 THEN CLS : GO=1 : GOTO 10 ' // ir para começo do jogo
3670 GOTO 3665
4006 '
4007 ' //// espada ////
4009 SU=0 : RE=0 : A$="" ' // controlador de tela - valor padrao de ataque - zerando string das escolhas de ataque
4010 LINE (130,30)-(224,80),14,BF : LINE (131,31)-(223,79),1,BF : PUTSPRITE 11,(159,40),6,4 ' // apagar de texto e sprite
4020 FOR I=1 TO A ' // rolagem de dados de acordo com o nivel do heroi
4025 RE=RE+(INT(6*RND(1)+1)) 
4030 NEXT I   
4045 IL=IL-RE ' // calculando dano no inimigo
4050 GOSUB 3017 ' // ir para ataque inimigo
4110 RETURN ' // ir para botoes de ataque
4115 '
4150 ' //// grey magic - dano extra em inimigo cinza ////
4155 SU=0 : RE=0 : A$="" : SM=0 ' // controlador de tela - valor padrao de ataque - zerando string das escolhas de ataque - special magic ativador de mais dano
4160 LINE (130,30)-(224,80),14,BF : LINE (131,31)-(223,79),1,BF : PUTSPRITE 11,(161,40),14,6 ' // apagar de texto e sprite
4166 IF CO=14 THEN SM=12
4170 FOR I=1 TO A ' // rolagem de dados de acordo com o nivel do heroi
4175 RE=RE+(INT(6*RND(1)+1)) 
4180 NEXT I   
4185 IL=IL-RE-SM : GM=GM-1 ' // dano no inimigo - zerando magic dano - diminuindo magia
4190 GOSUB 3017 ' // ir para ataque inimigo
4200 RETURN ' // ir para botoes de ataque
4205 '
4210 ' //// blue magic - diminui poder do inimigo ////
4215 SU=0 : RE=0 : A$="" : SM=0 ' // controlador de tela - valor padrao de ataque - zerando string das escolhas de ataque - special magic ativador de mais dano
4220 LINE (130,30)-(224,80),14,BF : LINE (131,31)-(223,79),1,BF : PUTSPRITE 11,(159,40),7,7  ' // apagar de texto e sprite
4230 IF CO=7 THEN SM=12 : PSET (98,56),1 : COLOR CO : PRINT#1,"-A" : COLOR 15 : IA=NI ' // calcular dano pela cor - ativar texto pela cor
4235 FOR I=1 TO A ' // rolagem de dados de acordo com o nivel do heroi
4240 RE=RE+(INT(6*RND(1)+1)) 
4245 NEXT I   
4250 IL=IL-RE-SM : BM=BM-1 ' // dano no inimigo - zerando magic dano - diminuindo magia
4255 GOSUB 3017 ' // ir para ataque inimigo
4260 RETURN ' // ir para botoes de ataque
4265 '
4270 ' //// yellow magic - cura heroi ////
4275 SU=0 : RE=0 : A$="" : SM=0 ' // controlador de tela - valor padrao de ataque - zerando string das escolhas de ataque - special magic ativador de mais dano
4280 LINE (130,30)-(224,80),14,BF : LINE (131,31)-(223,79),1,BF : PUTSPRITE 11,(160,40),10,8 : PSET (189,56),1 : COLOR 7 : PRINT#1,"L:+4" : COLOR 15 ' // apagar de texto e sprite
4290 IF CO=10 THEN SM=12
4295 FOR I=1 TO A ' // rolagem de dados de acordo com o nivel do heroi
4300 RE=RE+(INT(6*RND(1)+1)) 
4305 NEXT I   
4310 IL=IL-RE-SM : YM=YM-1 : L=L+4 ' // dano no inimigo - zerando magic dano - diminuindo magia - cura heroi
4315 GOSUB 3017 ' // ir para ataque inimigo
4320 RETURN ' // ir para botoes de ataque
4400 '
4405 ' // end boss 
4410 COLOR 15 : BLOAD"FINAL02.SC2",S
4415 IF STRIG(0)=-1 THEN GOTO 4425 ' // ir para texto
4420 GOTO 4415
4425 LINE (23,23)-(233,175),1,BF ' // desenho dos bloquinhos - fundo preto
4430 FOR I=9 TO 246 STEP 10 ' // criar parede do topo e baixo
4435 PSET(I,8),14 : DRAW D1$
4440 PSET(I,176),14 : DRAW D1$
4445 NEXT I
4450 FOR I=18 TO 172 STEP 10 ' // criar parede esquerda e direita
4455 PSET(9,I),14 : DRAW D1$
4460 PSET(239,I),14 : DRAW D1$
4465 NEXT I
4470 '
4475 ' ///// texto chefao ////
4480 PSET (30,27),1 : PRINT#1,"Ulak, the true god, is"
4481 PSET (30,39),1 : PRINT#1,"awaken. He is weak, for"
4485 PSET (30,51),1 : PRINT#1,"now. This is your only"
4490 PSET (30,63),1 : PRINT#1,"chance. If you fail, all"
4495 PSET (30,75),1 : PRINT#1,"kingdoms and all races"
4500 PSET (30,87),1 : PRINT#1,"will cease to exist."
4505 PSET (30,99),1 : PRINT#1,"The last warrior, the"
4510 PSET (30,111),1 : PRINT#1,"last chance, in the"
4515 PSET (30,123),1 : PRINT#1,"edge of the last"
4516 PSET (30,135),1 : PRINT#1,"nightfall..."
4535 '
4540 IF STRIG(0)=-1 THEN GOTO 4550
4545 GOTO 4540
4550 TM=17 : IL=240 : CO=6 : IA=5 : NM$="Ulak" : PSET (37,95),1 : PRINT#1,NM$ ' // chefao final
4555 GOTO 505
5290 '
5297 ' ---- sprite data ----
5298 '
5302 ' //// sprite 01
5304 DATA &H03,&H06,&H07,&H0F,&H1F,&H3F,&H7F,&H77
5305 DATA &H67,&H67,&H37,&H37,&H07,&H06,&H06,&H07
5306 DATA &H80,&H00,&H80,&H80,&HC0,&HE0,&HF0,&HF8
5307 DATA &HD8,&HCC,&HEC,&HE0,&H60,&H60,&H30,&H38
5309 ' //// sprite 02
5311 DATA &H03,&H06,&H07,&H0F,&H1F,&H1F,&H3F,&H37
5312 DATA &H37,&H37,&H1F,&H1F,&H07,&H06,&H06,&H07
5313 DATA &H80,&H00,&H80,&H80,&HC0,&HE0,&HE0,&HE0
5314 DATA &HC0,&HC0,&HC0,&HC0,&HC0,&HC0,&HC0,&HE0
5400 ' //// simbolo mapa - sprite 03
5403 DATA &H00,&H00,&H00,&H00,&H01,&H03,&H05,&H09
5404 DATA &H0B,&H0B,&H05,&H03,&H01,&H00,&H00,&H00
5405 DATA &H00,&H00,&H00,&H00,&H80,&HC0,&HA0,&H90
5406 DATA &HD0,&HD0,&HA0,&HC0,&H80,&H00,&H00,&H00
5410 ' //// espada - sprite 04
5420 DATA &H00,&H30,&H38,&H1C,&H0E,&H07,&H03,&H01
5425 DATA &H00,&H00,&H00,&H00,&H00,&H00,&H00,&H00
5430 DATA &H00,&H00,&H00,&H00,&H00,&H00,&H80,&HC8
5435 DATA &HF8,&H70,&H78,&HDC,&H0C,&H00,&H00,&H00
5440 ' //// cruz - sprite 05
5450 DATA &HC0,&HE0,&H70,&H38,&H1C,&H0E,&H07,&H03
5455 DATA &H03,&H07,&H0E,&H1C,&H38,&H70,&HE0,&HC0
5460 DATA &H03,&H07,&H0E,&H1C,&H38,&H70,&HE0,&HC0
5465 DATA &HC0,&HE0,&H70,&H38,&H1C,&H0E,&H07,&H03
5500 ' //// grey magic - sprite 06
5502 DATA &H00,&H01,&H07,&H1C,&H31,&H71,&H61,&H63
5503 DATA &H65,&H61,&H35,&H1C,&H38,&H60,&H00,&H00
5504 DATA &H00,&H80,&HE0,&H38,&H8C,&H8E,&H86,&HC6
5505 DATA &HA6,&H86,&HAC,&H38,&H1C,&H06,&H00,&H00
5520 ' //// blue magic - sprite 07
5530 DATA &H07,&H09,&H13,&H07,&H0D,&H19,&H01,&H27
5535 DATA &H11,&H09,&H35,&H1B,&H0D,&H07,&H03,&H01
5540 DATA &HC0,&H20,&H90,&HC0,&H60,&H30,&H00,&HC8
5545 DATA &H10,&H20,&H58,&HB0,&H60,&HC0,&H80,&H00
5550 ' //// yellow magic - sprite 08
5552 DATA &H00,&H40,&H20,&H18,&H10,&H07,&H07,&H07
5553 DATA &H07,&H06,&H04,&H09,&H12,&H30,&H70,&H80
5554 DATA &H01,&H0E,&H0C,&H08,&H10,&HE0,&HC8,&H90
5555 DATA &H20,&H60,&HE0,&H10,&H08,&H06,&H06,&H00
5556 ' //// INIMIGO - arqueiro - sprite 09
5560 DATA &H09,&H0F,&H0F,&H1F,&H3F,&H7F,&H7F,&HFF
5565 DATA &HEF,&HCF,&H8F,&HDF,&HDD,&H3D,&H38,&H78
5570 DATA &H00,&H30,&H18,&H8C,&HC4,&HE6,&HE2,&HF3
5575 DATA &HBF,&H9F,&H82,&HC2,&HC6,&HE4,&HEC,&HF0
5580 ' //// INIMIGO - garras - sprite 10
5590 DATA &H08,&H0C,&H0F,&H07,&H1F,&H3F,&H3F,&H7F
5595 DATA &H77,&H67,&H47,&H6F,&H6E,&H5E,&H5C,&H3C
5600 DATA &H40,&HC0,&HC0,&H80,&HE0,&HF0,&HF8,&HFC
5605 DATA &HCC,&HCC,&HC4,&HEC,&HEC,&HF4,&H74,&H78
5610 ' //// INIMIGO - lanceiro - sprite 11
5620 DATA &H1F,&H0F,&H0F,&H0F,&H3F,&H7F,&H7F,&HFF
5625 DATA &HEF,&HCF,&H8F,&HDF,&HDD,&H3D,&H38,&H78
5630 DATA &H82,&H07,&H02,&H02,&HC2,&HE2,&HE2,&HF2
5635 DATA &HBE,&H9E,&H82,&HC2,&HC2,&HE2,&HE2,&HF2
5640 ' //// INIMIGO - morcego  - sprite 12
5650 DATA &H80,&HC1,&HC1,&HE3,&HF3,&HFF,&HFE,&HFF
5655 DATA &HFF,&HF3,&HE3,&HC3,&HC2,&H62,&H32,&H0A
5660 DATA &H01,&H03,&H83,&HC7,&HCF,&HFF,&H7F,&HFF
5665 DATA &HFF,&HE7,&HE3,&H63,&H23,&H26,&H24,&H28
5670 ' //// INIMIGO - olho  - sprite 13
5680 DATA &H00,&H00,&H03,&H0F,&H3C,&H70,&HC1,&H83
5685 DATA &HC1,&H70,&H3C,&H4F,&H93,&H24,&H28,&H20
5690 DATA &H00,&H00,&HC0,&HF0,&H3C,&H0E,&H83,&HC1
5695 DATA &H83,&H0E,&H3C,&HF2,&HC9,&H24,&H14,&H04
5700 ' //// INIMIGO - serpente - sprite 14
5710 DATA &H00,&H07,&H1F,&H35,&H75,&HD5,&HD5,&HD7
5715 DATA &HDF,&HAF,&HDE,&HA1,&H9F,&HC0,&HFF,&HC0
5720 DATA &HE0,&HF0,&H98,&HCC,&HFE,&HFF,&H3D,&H8F
5725 DATA &HF3,&HFC,&H0E,&H80,&HC0,&H70,&HF8,&H1F
5730 ' //// INIMIGO - soldado - sprite 15
5740 DATA &H06,&H0F,&H0F,&H0F,&H3F,&H7F,&H7F,&HFF
5745 DATA &HEF,&HCF,&H8F,&HDF,&HDD,&H3D,&H38,&H78
5750 DATA &H02,&H02,&H02,&H02,&HC2,&HE2,&HE2,&HF7
5755 DATA &HBE,&H9E,&H80,&HC0,&HC0,&HE0,&HE0,&HF0
5760 ' //// INIMIGO - sombra - sprite 16
5770 DATA &HE7,&HE0,&HB0,&H98,&H1D,&H0F,&HFF,&HFA
5775 DATA &H9F,&H9F,&H3F,&H37,&H31,&H38,&H18,&H1F
5780 DATA &H8C,&HC6,&HC6,&HC7,&H8C,&HB8,&HE1,&HC1
5785 DATA &HE3,&HBF,&H81,&H80,&HC1,&HE3,&H3F,&H0F
5790 ' //// CHEFAO 01 - sprite 17
5800 DATA &H03,&H0F,&H1F,&H3F,&H37,&H33,&H3B,&H3D
5805 DATA &H3F,&H2E,&H37,&H1B,&H18,&H1C,&H0E,&H07
5810 DATA &HC0,&HF0,&HF8,&HFC,&HEC,&HCC,&HDC,&HBC
5815 DATA &HFC,&H74,&HEC,&HD8,&H18,&H38,&H70,&HE0
6510 GOTO 6510