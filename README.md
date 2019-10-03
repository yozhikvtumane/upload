https://glitch.com/edit/#!/psychedelic-peony  


# upload
# logo 27.11 
to square :i
repeat 4 [forward :i right :i]
end


to obdelnik :a :b
  repeat 2 [
    forward :b
    left 90
    forward :a
    left 90
  ]
end

to polygon :a :n
 repeat :n [
    forward :a
    left 360/:n
]

end

to nadpis

setstyle [bold ] print "hello
end


to tlustecary :n
  ClearScreen
  make "tloustka 1

repeat :n [
    setpenwidth :tloustka
    pendown
    forward 100
]

end


to pyramida1 :s :n
  ClearScreen
   make "i :n
    repeat :n [
    obdelnik :i*:s :s
    dalsischod :s
     make "i :i-1
    ]

end

to dalsischod :s
 forward :s 
  left 90
  forward :s/2
  right 90
end


to soustredctvrc :i :max
    ClearScreen
    ctverec2 :i
    dalsictverec
    make "i :i+20
    if (:i<:max) [soustredctvrc :i :max]
    
end

to dalsictverec
  penup
  right 90
  forward 10
  right 90
  forward 10
  right 180
  pendown
end
to ctverec2 :i
  repeat 4 [forward :i right :i]
end


to spirala :s :max

  forward :s
left 90
make "s :s+5
if (:s < :max) [spirala :s :max]
end


to spust :s :max
 ClearScreen
  spirala :s :max
end


to nejspoldel :a :b
    if ( :a < :b ) [nejspoldel :b :a]
    if ( :a >= :b) [
      make "zbytek mod :a :b
      if (:zbytek =  0) [ print :b]
      if not (:zbytek = 0) [nejspoldel :b :zbytek]
    ]

end



to faktorial :n
    if (:n > 1) [ output product :n faktorial :n-1]
    if (or :n = 1 :n=0) [output 1]
    if (:n < 0) [print [Nejde]] 
end



to kombbezopak :n :k
  if not (:n > :k) [print [Z tech cis komb nejde]] 
  if (:n > :k) [print div faktorial :n product faktorial :k faktorial :n-:k]
end

to nahoda
 ClearScreen
SetFOntSize 40
make "x random 10
label :x
HideTurtle
end

acdef doma
http://www.musilek.eu/michal/pdf/deproja2.pdf

to makesestiuhelnik :d :n
    ClearScreen
  repeat :n [
        pendown
       repeat 6[fd :d rt 60]
        penup
        left 90
        forward :d*1.7
        right 90
        
  ]
   
end

to plastev :a :b :r
  ClearScreen
end
