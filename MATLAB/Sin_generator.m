

clc; clear ; close all;

Fs = 1228e5;
f0 = 1919870;
cycle = 2;
t = linspace(0, cycle*pi, 128);

raw_q = 4 * sin(t);
raw_i = 4* cos(t);
[sine_i, sine_q] = iq_generator(raw_i, raw_q, 8000);

dir = '2_sine';

% plot(t, sine_i, t, sine_q)

mkdir(dir);

write_file(sine_q, [dir, '/new_sine_q.txt']);
write_file(sine_i, [dir, '/new_sine_i.txt']);

ethernet_write(sine_i, sine_q);
