unset key
set terminal x11
set term x11 1 noraise

set xrange [360:0] reverse
set format x ""

set yrange [0:20]
set yrange [0:15]
set ylabel "Amps"
set ytics 1 nomirror textcolor lt 1

set y2range [0:140]
set y2label "Voltage"
set y2tics 10 nomirror textcolor lt 3
plot \
    "<(tail -r data.out | awk '{print $2 \"\t\" $3}' | cat -n)" using 1:2 with lines lw 5, \
    "<(tail -r data.out | awk '{print $2 \"\t\" $3}' | cat -n)" using 1:3 with lines  lw 5 axes x1y2
pause 1
reread

