unset key
set terminal x11

set yrange [0:15]
set ylabel "Amps"
set ytics 1 nomirror textcolor lt 1

set y2range [0:140]
set y2label "Title on the right"
set y2tics 10 nomirror textcolor lt 3
plot \
    "<(tail -n 100 data.out)" using 1:2 with lines lw 5, \
    "<(tail -n 100 data.out)" using 1:3 with lines  lw 5 axes x1y2
pause 1
reread

