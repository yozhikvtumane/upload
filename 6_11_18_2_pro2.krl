p��kaz kroky(n)
  opakuj n
    kdy� nen� ze�
      krok
    konec
  konec
konec


p��kaz ke_zdi
  dokud nen� ze�
    krok
  konec
konec

p��kaz abeceda
  dom�
  ��slo i = 0
  opakuj 26
    i = i + 1
    krok
    maluj 64 + i
  konec
konec

p��kaz napis
  dom�
  ��slo p dokud nen� p = 13
    maluj p
    krok
    �ekej - 1
    p = kl�vesa
  konec
konec



p��kaz chaos
  opakuj 300
    opakuj n�hoda(3)
      vlevo
    konec

    opakuj n�hoda(20)
      kdy� nen� ze�
        krok
      konec
    konec

    opakuj n�hoda(9)
      kdy� je m�sto
        polo�
      konec
    konec
  konec
konec



p��kaz chaos
  opakuj 300
    opakuj n�hoda(3)
      vlevo
    konec

    opakuj n�hoda(20)
      kdy� nen� ze�
        krok
      konec
    konec

    opakuj n�hoda(9)
      kdy� je m�sto
        polo�
      konec
    konec
  konec
konec

p��kaz znacky
  dom�
  opakuj 20

    dokud nen� ze�
      prevod
      krok
    konec

    vlevo
    krok
    vlevo
    ke_zdi
    celem_vzad
  konec
konec


p��kaz prevod
  ��slo k = 0
  dokud je zna�ka
    zvedni
    k = k + 1
  kdy� k > 0
    maluj k + 48
  konec
konec


p��kaz secti(x,y)
  dom�
  vlevo
  ke_zdi
  vpravo
  ke_zdi
  vpravo

  pis(x)

  vpravo
  krok
  vlevo

  ke_zdi
konec


