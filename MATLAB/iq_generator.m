function [i, q] = iq_generator(val_in, val_qu, amp)    
    max_in = max(abs(val_in));
    max_qu = max(abs(val_qu));

    %% 
    in_val = val_in /max_in;
    qu_val = val_qu / max_qu;
    bin_off = 2^(16-1) + 1;

    %%
    i = ceil(( (in_val))  *amp + bin_off) ;
    q = ceil(( (qu_val))  *amp +  bin_off) ;
 
    if ((q > 2^16) | (i > 2^16))
        warning('Oppssss... OverFlow occured!')
    end
end