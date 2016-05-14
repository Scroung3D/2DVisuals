 set terminal png size 600, 400 
set output 'visitas.png'
unset xtics
set ytics
set x2tics ("United States" 0, "Germany" 1, "Mexico" 2, "Argentina" 3, "Reserved" 4)
set boxwidth 1
set style fill solid border -1
plot "-" notitle with boxes fill, \
     "-" notitle with boxes fill, \
     "-" notitle with boxes fill, \
     "-" notitle with boxes fill, \
     "-" notitle with boxes fill
0 8
e
1 1
e
2 11
e
3 3
e
4 8
e
