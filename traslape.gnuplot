set terminal postscript eps enhanced color
set output 'traslape.eps'
set style fill solid 1.0 noborder
set style function filledcurves y1=0
set samples 1000
set xrange [4.000000:50.000000]
set yrange [0:0.08]
set xlabel 'tama~n{.3\176}o'
set ylabel 'probabilidad'
set key top left Left reverse samplen 1
set title 'Distribuciones de la red'
Gauss(x,mu,sigma) = 1./(sigma*sqrt(2*pi)) * exp( -(x-mu)**2 / (2*sigma**2) )
plot Gauss(x, 26.000000, 6.000000) lc rgb "blue" title 'media del tama~n{.3\176}o de enlaces = 26 sigma = 6 ', Gauss(x, 28.000000, 6.000000) lc rgb "red" title 'media del tama~n{.3\176}o de sitios =  28 sigma = 6',((x > 27.000000 ) ? Gauss(x, 26.000000, 6.000000):Gauss(x, 28.000000, 6.000000)) lc rgb "#00FFFF" title 'interseccion en 27' 
