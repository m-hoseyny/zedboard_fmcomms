t = tcpip('172.16.142.52', 7, 'NetworkRole', 'client');
fopen(t);
i = 1000; % must letter than 255 (1byte)
while i < 1256
    fwrite(t, num2str(i));
    pause(0.00001) % at least 200 ms delay
    i = i + 1;
end