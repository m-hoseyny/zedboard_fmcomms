

clc; clear ; close all;

Fs = 122880000;
cycle = 1;
N_S = 128;
t = linspace(0, cycle*2*pi, N_S);

freq = ((10*cycle*Fs)/N_S) / 1e6;

display( freq ,'Freq (MHz) : ')

raw_i = 1 * sin(t);
raw_q = 1 * cos(t);
[sine_i, sine_q] = iq_generator(raw_i, raw_q, 16000);

dir = '2_sine';

plot(t, sine_i, t, sine_q)

mkdir(dir);

write_file(sine_q, [dir, '/new_sine_q.txt']);
write_file(sine_i, [dir, '/new_sine_i.txt']);

t = ethernet_write(sine_i, sine_q);
data = fread(t, 12);
data = char(data);
close all