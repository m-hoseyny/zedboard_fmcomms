function y = write_file(data, fname)
    
    f = fopen(fname, 'w');
    for i = 1:1:length(data)
        fprintf(f, '%d ,', data(i));
        if mod(i, 8) == 0
            fprintf(f, '\n');
        end
    end
    y = 1;
end