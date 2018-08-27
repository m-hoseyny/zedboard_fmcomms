function [y] = process_data(data)

    %% delete outline data
    data = data(data > 4e9);
    
    %% shift data
    
    y = bitshift(data, -16);



end