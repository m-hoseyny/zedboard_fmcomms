function [ i, q] = ethernet_read(len)

    t = tcpip('192.168.1.10', 7, 'NetworkRole', 'client');
    fopen(t);
    data = fread(t,len);
    x = data(1,1:256);
    y = data(1,257:end);
    
    for j = 1:length(x)/2
        i[j] = ( x[2*j -1] *256 ) + x[2*j] ; 
        q[j] = ( y[2*j -1] *256 ) + y[2*j] ;
    end

end