#!/usr/bin/env gnuplot

# -----------------------------
# Force & Moment Coefficients
# -----------------------------

set grid
set autoscale
set xlabel "Time"
set ylabel "Coefficient value"
set title "Force and Moment Coefficients - Continuous Monitoring"
set key outside right top vertical maxrows 10
set format y '%.3e'

# Line styles
set style line 1 lc rgb '#1f77b4' lw 2  # Cd
set style line 2 lc rgb '#ff7f0e' lw 2  # Cl
set style line 3 lc rgb '#2ca02c' lw 2  # CmPitch
set style line 4 lc rgb '#d62728' lw 2  # CmRoll
set style line 5 lc rgb '#9467bd' lw 2  # CmYaw
set style line 6 lc rgb '#8c564b' lw 2  # Cs

# File path
file = 'postProcessing/forceCoeffs/0/coefficients.dat'

# Continuous loop
while (1) {

    clear

    plot \
        file using 1:2  with lines ls 1 title 'Cd', \
        ''   using 1:5  with lines ls 2 title 'Cl', \
        ''   using 1:8  with lines ls 3 title 'CmPitch', \
        ''   using 1:9  with lines ls 4 title 'CmRoll', \
        ''   using 1:10 with lines ls 5 title 'CmYaw', \
        ''   using 1:11 with lines ls 6 title 'Cs'

    pause 5
}
