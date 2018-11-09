pý¡kaz KE_ZDI
 dokud nen¡ zeÔ
 krok
 konec
konec

pý¡kaz SECTI(x,y)
 //nastaven¡ pozice
 dom…
 vlevo
 KE_ZDI
 ZPET
 vpravo
 KE_ZDI
 //prvn¡ sc¡tanec
 PIS(x)
 vpravo
 krok
 vlevo
 //druhy sc¡tanec
 PIS(y)
 vpravo
 krok
 vlevo
 //podrzen¡
 opakuj 10
 ZPET
 maluj '-'
 konec
 KE_ZDI
 vpravo
 krok
 vlevo
 //soucet
 PIS(x+y)
konec
