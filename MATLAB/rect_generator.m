

clc; clear ; close all;

Fs = 1228e5;
f0 = 1919870;
cycle = 2;
t = linspace(0, cycle*pi, 128);

raw_q = (Step(linspace(-1, 1, 128)).*2 - 1);
raw_i = raw_q;


[rect_i, rect_q] = iq_generator(raw_i, raw_q, 8000);

plot(t, rect_i, t, rect_q)

signal = 'rect';

mkdir(signal);

write_file(rect_q, [signal, '/', signal, '_q.txt']);
write_file(rect_i, [signal, '/', signal, '_i.txt']);


ethernet_write(rect_i, rect_q);

close all
