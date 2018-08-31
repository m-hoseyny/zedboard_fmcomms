function [s_i, s_q] = ethernet_read(t, size)
    display('Reading data from ethernet...')
    s_i = zeros(1, size);
    s_q = zeros(1, size);
    for i = 1:size
       data = fread(t, 30);
       data = data.';
       data = char(data);
       data = strsplit(data, ',');
       s_i(i) = str2double(cell2mat(data(1)));
       s_q(i) = str2double(cell2mat(data(2)));
    end
    display('Reading data from ethernet Complete!')


end