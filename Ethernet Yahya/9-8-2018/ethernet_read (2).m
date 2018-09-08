function [ i, q] = ethernet_read(len)

    t = tcpip('192.168.1.10', 7, 'NetworkRole', 'client');
    fopen(t);
    data = fread(t,len);
    x = data(1:len/2,1);
    y = data(len/2 + 1:end,1);
    
    for j = 1:length(x)/2
        i(j) = ( x(2*j) *256 ) + x(2*j - 1) ; 
        q(j) = ( y(2*j) *256 ) + y(2*j - 1) ;
    end

end