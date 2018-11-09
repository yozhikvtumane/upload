pý¡kaz kroky(n)
  opakuj n
    kdy§ nen¡ zeÔ
      krok
    konec
  konec
konec


pý¡kaz ke_zdi
dokud nen¡ zeÔ
    krok
  konec
konec

pý¡kaz abeceda
  dom…
  Ÿ¡slo i = 0
  opakuj 26
    i = i + 1
    krok
    maluj 64 + i
  konec
konec

pý¡kaz napis
  dom…
  Ÿ¡slo p dokud nen¡ p = 13
    maluj p
    krok
    Ÿekej - 1
    p = kl vesa
  konec
konec



pý¡kaz chaos
  opakuj 300
    opakuj n hoda(3)
      vlevo
    konec

    opakuj n hoda(20)
      kdy§ nen¡ zeÔ
        krok
      konec
    konec

    opakuj n hoda(9)
      kdy§ je m¡sto
        polo§
      konec
    konec
  konec
konec
