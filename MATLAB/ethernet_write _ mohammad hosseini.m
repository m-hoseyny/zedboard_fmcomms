function [t] = ethernet_write(sig_i, sig_q)
    display('Sending Data via ethernet')
    t = tcpip('192.168.1.10', 7, 'NetworkRole', 'client');
    fopen(t);
    for i = 1 : length(sig_i)
        fwrite(t, num2str(sig_i(i)));
        pause(0.001)
        fwrite(t, num2str(sig_q(i)));
        pause(0.001)
    end
    display('Finished Sending Data via ethernet')
    pause(1);
end