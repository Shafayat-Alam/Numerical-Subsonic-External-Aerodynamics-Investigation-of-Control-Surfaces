#!/usr/bin/env gnuplot

# Set up terminal (optional, remove if not supported)
# set terminal qt persist size 1200,800

# Set up the plot
set grid
set logscale y
set xlabel "Time Step"
set ylabel "Iteration 0 - 5000 Residuals (log scale)"
set title "All Final Residuals - Continuous Monitoring"
set key outside right top vertical maxrows 10

# Style settings
set style line 1 lc rgb '#1f77b4' lw 2  # Ux
set style line 2 lc rgb '#ff7f0e' lw 2  # Uy  
set style line 3 lc rgb '#2ca02c' lw 2  # Uz
set style line 4 lc rgb '#d62728' lw 2  # h
set style line 5 lc rgb '#9467bd' lw 2  # mu_turbulent
set style line 6 lc rgb '#8c564b' lw 2  # P

# Format y-axis for scientific notation
set format y '%.0e'

set autoscale

# Loop for continuous monitoring
while (1) {
    # Clear and replot
    clear
    
    # Plot ALL final residuals with proper column indices:
    plot \
    'postProcessing/residuals/0/solverInfo_0.dat' using 1:4 with lines ls 1 title 'Ux', \
    '' using 1:7 with lines ls 2 title 'Uy', \
    '' using 1:10 with lines ls 3 title 'Uz', \
    '' using 1:15 with lines ls 4 title 'h', \
    '' using 1:19 with lines ls 5 title 'nu turbulent', \
    '' using 1:24 with lines ls 6 title 'p'
    
    # Refresh every 5 seconds
    pause 5
}
