p��kaz DEMO

 �ACHOVNICE
 �ekej 1000

 B�H
 �ekej 500

 DLA�DICE
 �ekej 2000

 POKRYJ(n�hoda(32))
 �ekej 200

 ST�ED
 opakuj 4
   OBRAZ
   vlevo
 konec
 opakuj 60
   O_POL֬KO_BL֦
   vlevo
   �ekej 40
 konec
 VYBER
 �ekej 1000

 opakuj 50
  Hanojsk�_vاe
  �ekej 30
 konec
 �ekej 1000

 BLUDI�T�
 DOMY
 ST�ED;ZP�TKY
 PYRAMIDA 5
konec

p��kaz �ELEM_VZAD 
 vlevo 
 vlevo
konec

p��kaz KE_ZDI
 dokud nen� ze�
  krok
 konec
konec

p��kaz ZP�TKY
 �ELEM_VZAD
 KE_ZDI
 �ELEM_VZAD
konec

p��kaz Z�DY_KE_ZDI
 KE_ZDI
 �ELEM_VZAD
konec

p��kaz OBRAT
 kdy� je ze�
  �ELEM_VZAD
 konec
konec

p��kaz ZATO�
 dokud je ze�
  vlevo
 konec
konec

podm�nka VLEVO_ZE�
 rychle
 vlevo
 VLEVO_ZE�=ze�
 vpravo
 pomalu
konec

podm�nka VPRAVO_ZE�
 rychle
 vpravo
 VPRAVO_ZE�=ze�
 vlevo
 pomalu
konec

podm�nka VZADU_ZE�
 rychle
 �ELEM_VZAD
 VZADU_ZE�=ze�
 �ELEM_VZAD
 pomalu
konec

p��kaz DOKOLA(KOLIK)
 opakuj KOLIK
  vlevo
 konec
konec

p��kaz NA_SEVER
 kdy� z�pad
  vpravo
 jinak
  dokud nen� sever
   vlevo
  konec
 konec
konec

p��kaz NA_JIH
 kdy� v�chod
  vpravo
 jinak
  dokud nen� jih
   vlevo
  konec
 konec
konec

p��kaz NA_Z�PAD
 kdy� jih
  vpravo
 jinak
  dokud nen� z�pad
   vlevo
  konec
 konec
konec

p��kaz NA_V�CHOD
 kdy� sever
  vpravo
 jinak
  dokud nen� v�chod
   vlevo
  konec
 konec
konec

p��kaz NAHORU
 kdy� sever
  krok
 jinak
  vlevo
  NAHORU
  vpravo
 konec
konec

p��kaz DOL�
 kdy� jih
  krok
 jinak
  vlevo
  DOL�
  vpravo
 konec
konec

p��kaz DOL�_KE_ZDI
 kdy� jih
  KE_ZDI
 jinak
  vlevo
  DOL�_KE_ZDI
  vpravo
 konec
konec

p��kaz ZP�T
 rychle
 VZAD 1
 pomalu
konec

p��kaz P_�KROK
 rychle
 vpravo
 ?KROK
 vlevo
 pomalu
konec

p��kaz P_�IKMO
 kdy� je ze�
  P_�KROK
  ?KROK
 jinak
  P_�KROK
  krok
 konec
konec

p��kaz L_�KROK
 rychle
 vlevo
 ?KROK
 vpravo
 pomalu
konec

p��kaz L_�IKMO
 kdy� je ze�
  L_�KROK
  ?KROK
 jinak
  krok
  L_�KROK
 konec
konec

p��kaz ?KROK
 kdy� nen� ze�
  krok
 konec
konec

p��kaz ?ZVEDNI
 kdy� je zna�ka
  zvedni
 konec
konec

p��kaz ?POLO�
 kdy� je m�sto
  polo�
 konec
konec

p��kaz VYBER
 dokud je zna�ka
  zvedni
 konec
konec

p��kaz VYPL�
 dokud je m�sto
  polo�
 konec
konec

p��kaz POLO�n(n)
 opakuj n
  polo�
 konec
konec

p��kaz OZNA�(n)
 VYBER
 POLO�n(n)
konec

p��kaz NA_ZNA�KU
 dokud nen� zna�ka a nen� ze�
  krok
 konec
konec

p��kaz NA_ZNAK
 dokud nen� znak a nen� ze�
  krok
 konec
konec

// po�et zna�ek na aktu�ln�m pol��ku
funkce ZNA�KY
 ��slo I=0
 dokud zna�ka
  zvedni
  I=I+1
 konec
 opakuj I
  polo�
 konec
 ZNA�KY=I
konec

// ud�l� k krok�
p��kaz KROKY(K)
 kdy� K<0
  VZAD(-K)
 jinak
  opakuj K
   ?KROK
  konec
 konec
konec

// ud�l� k krok� dozadu
p��kaz VZAD(K)
 kdy� K<0
  KROKY(-K)
 jinak
  �ELEM_VZAD
  KROKY K
  �ELEM_VZAD
 konec
konec


// projde bludi�t� a vysb�r� v�echny zna�ky
// na vytvo�en� bludi�t� pou�ij Shift+F5
p��kaz BLUDI�T�
 opakuj 4;  bludi�t�1('.'); konec
 opakuj 4;  bludi�t�1(0);   konec
 maluj 0
konec
p��kaz bludi�t�1(Z)
 kdy� ze�
  vpravo
 jinak
  krok
  vlevo
  kdy� znak=Z
   vlevo
  jinak
   maluj Z
   opakuj 3
    bludi�t�1(Z)
   konec
  konec
  krok
  vlevo
 konec
konec

//namaluje �achovnici
p��kaz �ACHOVNICE
 dom�
 opakuj
  maluj ' '
  DAL��
  kdy� nen� sever
   maluj '�'
   DAL��
  konec
 a� sever
 dom�
konec

//celou plochu pokryje znakem z
p��kaz POKRYJ (z)
 dom�
 opakuj
  maluj z
  DAL��
 a� je sever
 dom�
konec

//vy�ist� plochu, kter� neobsahuje zdi
p��kaz CLS
 POKRYJ 0
konec


//p�esune se doprost�ed plochy
p��kaz ST�ED
 dom�
 DO_POLOVINY
 vpravo
 DO_POLOVINY
konec

p��kaz DO_POLOVINY
 kdy� je ze�
  �ELEM_VZAD
 jinak
  KROKY 2
  DO_POLOVINY
  krok
 konec
konec

p��kaz P�IDEJ_ZNA�KU
 kdy� je ze�
  ?POLO�
  �ELEM_VZAD
 jinak
  krok
  kdy� nen� zna�ka
   ?POLO�
   �ELEM_VZAD
   krok
  jinak
   P�IDEJ_ZNA�KU
   krok
  konec
 konec
konec

//p�em�st� zna�ky na dal� pol��ko
p��kaz ST�HUJ
 kdy� je zna�ka
  zvedni
  ST�HUJ
  ?POLO�
 jinak
  kdy� je ze�
   ZP�TKY
  jinak
   krok
  konec
 konec
konec

p��kaz ��RA
 ZP�TKY
 dokud nen� ze�
  ?POLO�
  krok
 konec
 ?POLO�
konec

p��kaz DAL��
 kdy� nen� ze�
  krok
 jinak
  kdy� z�pad
    vpravo
    kdy� nen� ze�
     krok
     vpravo
    konec
  jinak
    vlevo
    kdy� nen� ze�
     krok
     vlevo
    konec
  konec
 konec
konec

// p�ed zd� polo�� zna�ku a vr�t� se zp�t
p��kaz OBRAZ
 kdy� je ze�
  �ELEM_VZAD
  polo�
 jinak
  krok
  OBRAZ
  krok
 konec
konec

// bا� �ikmo a odr��� se od st�n
p��kaz M֬
 dokud nen� kl�vesa
   kdy� je ze�
    vlevo
   jinak
    kdy� VLEVO_ZE�
     vpravo
    konec
   konec
   L_�IKMO
   �ekej 40
 konec
konec

// dojde ke zdi a zp�t
p��kaz BAL�NEK
 kdy� je ze�
  �ELEM_VZAD
 jinak
  krok
  BAL�NEK
  krok
 konec
konec

// chod� ke zdi a zp�tky
p��kaz DRIBLUJ
 opakuj
  BAL�NEK
  �ELEM_VZAD
 a� je kl�vesa
konec

p��kaz �HLOP�֬KY
 dom�
 �HLOP�֬KA
 �ELEM_VZAD
 KE_ZDI
 vlevo
 �HLOP�֬KA
 dom�
konec
p��kaz �HLOP�֬KA
 opakuj
  maluj 'X'
  L_�IKMO
 a� je ze� nebo VLEVO_ZE�
 maluj 'X'
konec

// dojde ke zna�ce, p�em�st� ji o pol��ko bl��
// a vr�t� se zp�t na p�vodn� m�sto
p��kaz O_POL֬KO_BL֦
 kdy� je ze�
  �ELEM_VZAD
 jinak
  krok
  kdy� je zna�ka
   �ELEM_VZAD
   ST�HUJ
  jinak
   O_POL֬KO_BL֦
   krok
  konec
 konec
konec

p��kaz POSTAV_ZE�
 opakuj 5
  maluj '�'
  ?KROK
 konec
 vpravo
konec

// namaluje d�m
p��kaz D�M
//ZDI
 KROKY 2;  vlevo
 POSTAV_ZE�;  P_�IKMO
 POSTAV_ZE�;  POSTAV_ZE�
 KROKY 2;  vpravo

//DVE�E
 maluj '�';  krok
 maluj '�';  vlevo;  krok
 maluj '�';  krok;  vlevo
 maluj '�';  krok
 maluj '�';  �ELEM_VZAD

//ST�ECHA
 KROKY 3
 L_�IKMO;  L_�IKMO
 opakuj 3
  maluj '/';  P_�IKMO
 konec
 maluj '^';  vpravo
 opakuj 3
  P_�IKMO;  maluj '\'
 konec
 VZAD 3
 maluj '';  KROKY 3;  vpravo
 KROKY 5
 vlevo;  KROKY 2
konec

p��kaz DOMY
 dom�
 opakuj
  D�M
  KROKY 8
  kdy� nen� ze�
   VZAD 8
  konec
 a� je ze�
 ZP�TKY
konec

// nakresl� �tverec
p��kaz �TVEREC
 NA_V�CHOD
 maluj '�';  krok
 opakuj 3
  maluj '�';  krok
 konec
 maluj '�';  vlevo;  krok
 maluj '�';  krok
 maluj '�';  vlevo;  krok
 opakuj 3
  maluj '�';  krok
 konec
 maluj '�';  vlevo;  krok
 maluj '�';  krok;  vlevo
konec

// celou plochu vypln� �tverci
p��kaz DLA�DICE
 dom�
 opakuj
  opakuj
   �TVEREC
   KROKY 10
   kdy� nen� ze�
    VZAD 5
   konec
  a� je ze�
  ZP�TKY
  vlevo
  KROKY 6
  kdy� nen� ze�
   VZAD 3
  konec
 a� je ze�
 dom�
konec

p��kaz SRDCE
 dom�
 DO_POLOVINY
 �ELEM_VZAD
 opakuj 4
   L_�IKMO;  krok;  maluj ''
 konec
 vlevo
 opakuj 3
   krok;  maluj ''
 konec
 opakuj 2
  krok;  vlevo
  opakuj 3
    KROKY 2;  maluj ''
  konec
  L_�IKMO;  krok;  maluj ''
  vpravo
 konec
 �ELEM_VZAD
 opakuj 3
   krok;   maluj ''
 konec
 opakuj 4
   L_�IKMO;  L_�KROK;  maluj ''
 konec
 dom�
konec

// sma�e plochu tak, �e chod� n�hodn�
p��kaz B�H
 opakuj 8000
  kdy� n�hoda(10)<5
   vlevo
  konec
  kdy� n�hoda(10)<5
   vpravo
  konec
  ZATO�
  krok
  maluj 0
  kdy� n�hoda(4)=0
   �ekej 1
  konec
 konec
konec

// ovl�d�n� robota kl�vesnic�
p��kaz KAREL
 opakuj
  �ekej -1
  zvolit kl�vesa
   p��pad -75  //vlevo
    vlevo
   p��pad -77  //vpravo
    vpravo
   p��pad -72  //NAHORU
    ?KROK
   p��pad -80  //DOLU
    ZP�T
   p��pad -115 //Ctrl+vlevo
    L_�KROK
   p��pad -116 //Ctrl+vpravo
    P_�KROK
   p��pad -141 //Ctrl+nahoru
    KE_ZDI
   p��pad -145 //Ctrl+dolu
    ZP�TKY
   p��pad 13   //Enter
    n�vrat
   p��pad '-'
    ?ZVEDNI
   p��pad '+'
    ?POLO�
   p��pad 32
    maluj 0
  konec
 konec
konec

// vytvo�� Pascal�v troj�heln�k
p��kaz PYRAMIDA(v��ka)
 kdy� VPRAVO_ZE�
  ST�ED
 konec
 ?POLO�
 v��ka=v��ka-1
 kdy� v��ka>0
  L_�IKMO
  PYRAMIDA v��ka
  vpravo
  KROKY 2
  vlevo
  PYRAMIDA v��ka
  �ELEM_VZAD
  P_�IKMO
  �ELEM_VZAD
 konec
konec

p��kaz Hanojsk�_vاe
 DOL�_KE_ZDI
 kdy� jih nebo sever
  vlevo
 konec
 OBRAT
 krok
 kdy� ze�
  �ELEM_VZAD
  krok
 jinak
  ZP�T
 konec
 kdy� nen� zna�ka
  POSTAV_V��(9)
 konec
 HANOJ(1,2)
konec

p��kaz POSTAV_V��(v��ka)
 kdy� v��ka>0
  VYBER
  POLO�n(v��ka)
  NAHORU
  POSTAV_V��(v��ka-1)
  DOL�
 konec
konec

//p�esune Hanojskou vا na ty� k
//pou�ije pomocnou ty� p
p��kaz HANOJ(k,p)
 kdy� k<0
  �ELEM_VZAD
  HANOJ(-k,-p)
  �ELEM_VZAD
 jinak
  //zjisti velikost disku
  ��slo n=ZNA�KY
  //p�esu� sloupec na pomocnou ty�
  kdy� n>1
   NAHORU
   HANOJ(p,k)
   VZAD(p)
   dokud zna�ka
    NAHORU
   konec
   DOL�
  konec
  //p�esu� jeden disk
  VYBER
  DOL�_KE_ZDI
  KROKY(k)
  dokud zna�ka
   NAHORU
  konec
  POLO�n(n)
  DOL�_KE_ZDI
  //p�esu� sloupec na c�lovou ty�
  kdy� n>1
   VZAD(k-p)
   dokud ZNA�KY>=n
    NAHORU
   konec
   HANOJ(k-p,-p)
  konec
 konec
konec


// vyn�sob� matice m,n, v�sledek d� do z
// Matice musej� m�t spr�vn� rozm�ry !
p��kaz #nasob(z[][], m[][], n[][])
 ��slo i,j,k,Suma,r[]
 i=0
 opakuj d�lka(m)
  r=z[i]
  j=0
  opakuj d�lka(n[0])
   Suma=0
   k=0
   opakuj d�lka(n)
    Suma=Suma+m[i][k]*n[k][j]
    k=k+1
   konec
   z[i][j]=Suma
   j=j+1
  konec
  i=i+1
 konec
konec

// se�te matice m,n, v�sledek d� do z
// Matice musej� m�t stejn� rozm�ry !
p��kaz #secti(z[][], m[][], n[][])
 ��slo i,j,r[]
 i=0
 opakuj d�lka(m)
  r=z[i]
  j=0
  opakuj d�lka(m[0])
   r[j]=m[i][j]+n[i][j]
   j=j+1
  konec
  i=i+1
 konec
konec

// p�e�te ��slo, kter� je vpravo od Karla
funkce read
 ��slo x=0, minus=0
 NA_V�CHOD
 NA_ZNAK
 kdy� znak='-'
  minus=1
  krok
 konec
 dokud znak>='0' a znak<='9'
  x= 10*x + (znak-'0')
  ?KROK
 a� je ze�
 kdy� je minus
  x=-x
 konec
 read=x
konec

// nap��e ��slo vpravo od robota
p��kaz write(x)
 NA_V�CHOD
 kdy� x<0
  maluj '-'
  x=-x
 konec
 kdy� x>9
  write(x/10)
 jinak
  krok
 konec
 maluj x%10+'0'
 krok
konec

// p�e�te matici
// mus� st�t v lev�m doln�m rohu matice
p��kaz #precti(pole[][])
 ��slo i,j
 i=d�lka(pole)-1
 opakuj d�lka(pole)
  j=0
  opakuj d�lka(pole[0])
    pole[i][j]=read
    j=j+1
  konec
  i=i-1
  ZP�TKY
  L_�KROK
 konec
konec

//vyp��e matici
p��kaz #vypis(pole[][])
 ��slo i,j
 i=d�lka(pole)-1
 opakuj d�lka(pole)
  j=0
  opakuj d�lka(pole[0])
    write pole[i][j]
    j=j+1
    krok
  konec
  i=i-1
  ZP�TKY
  L_�KROK
 konec
konec

// se�te a vyn�sob� dv� �tvercov� matice
// Karel je v lev�m doln�m rohu prvn� matice,
// druh� matice je naps�na nad prvn� matic�,
// odd�len� jsou pr�zdn�m ��dkem.
p��kaz matice
 ��slo dim=0
 NA_ZNAK
 dokud nen� ze� a je znak
   dokud je znak
    krok
   konec
   NA_ZNAK
   dim=dim+1
 konec
 ZP�TKY

 ��slo B[dim][dim],C[dim][dim]
 #precti(B)
 L_�KROK
 #precti(C)
 L_�KROK

 ��slo Z[dim][dim]
 #secti(Z,B,C)
 #vypis(Z)
 L_�KROK
 #nasob(Z,B,C)
 #vypis(Z)
 dom�
konec


