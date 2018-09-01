function [t] = ethernet_write(sig_i, sig_q)
%     sig_i
    bit_sig_i_part_2 = rem(sig_i , 2^8);
    bit_sig_i_part_1 = (sig_i - bit_sig_i_part_2)/2^8;
    
    [r,c] = size(sig_i);
    c = c*2;
    sig_i_8bit = zeros(1,c);
    sig_i_8bit(1,1:2:c) = bit_sig_i_part_1;
    sig_i_8bit(1,2:2:c) = bit_sig_i_part_2;
    
    bit_sig_q_part_2 = rem(sig_q , 2^8);
    bit_sig_q_part_1 = (sig_q - bit_sig_q_part_2)/2^8;
    
    [r,c] = size(sig_q);
    c = c*2;
    sig_q_8bit = zeros(1,c);
    sig_q_8bit(1,1:2:c) = bit_sig_q_part_1;
    sig_q_8bit(1,2:2:c) = bit_sig_q_part_2;
%     sig_i_8bit
    display('Sending Data via ethernet')
    t = tcpip('192.168.1.10', 7, 'NetworkRole', 'client');
    fopen(t);
    
        fwrite(t, sig_i_8bit);
        pause(2)
        fwrite(t, sig_q_8bit);
        
    display('Finished Sending Data via ethernet')
end