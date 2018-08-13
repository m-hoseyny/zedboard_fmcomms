function [ u ] = Step( x )
 u= 0 * x;
 u(x >= 0) = 1;
end

