
% testing for  Rectangular Pulse
close all;clear ; clc;

Fs = 122880000/2;
t = 0:1/Fs:128/Fs;
x = -64/Fs:1/Fs:64/Fs;
Pulse = 8.1915e+03 *( Step(t+10) - Step(t-10) ) +  3.2768e+04;

hil_pulse = hilbert(Pulse);

in_pulse = Pulse .* cos(1919870 * 2 * 3.14 * t) + hil_pulse .* sin(1919870 * 2 * 3.14 * t);
qu_pulse = hil_pulse .* cos(1919870 * 2 * 3.14 * t) -  Pulse .* sin(1919870 * 2 * 3.14 * t);

var_in = round(abs(in_pulse));
var_qu = round(abs(qu_pulse));


%% sin- sin - sin

    in_pulse = Pulse .* cos(1919870 * 2 * 3.14 * t);
    qu_pulse =  Pulse .* sin(1919870 * 2 * 3.14 * t);
    var_in = ceil(abs(in_pulse));
    var_qu = ceil(abs(qu_pulse));
    
    
    %% sinc
    
    in_sinc =  1./(pi * t) ;
    qu_sinc =  1./(pi * t) .* sin(1919870 * 2 * 3.14 * t) ;
    
     val_in = ceil(abs(in_sinc));
    val_qu = ceil(abs(qu_sinc));
    
    
    %%
    Fs = 122880000/2;
    om = 100000000;
    t = 0:1/Fs:128/Fs;
    x = -64/Fs:1/Fs:64/Fs;
    in_sinc2 = (2./((pi * t).^2)) .* sin(om * 2 * pi * t) .* sin(om * 4 * 3.14 * t);
    qu_sinc2 = (1./((pi * t).^2)) .* sin(om * 2 * pi * t) ;
    
    
        val_in = ceil(abs(in_sinc2));
    val_qu = ceil(abs(qu_sinc2));

