function [y] = read_data(fname, formatSpecific)
    f = fopen(fname, 'r');
    if(f == -1)
        error('File is not valid')
    end
    y = fscanf(f, formatSpecific);
end