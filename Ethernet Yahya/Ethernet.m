t = tcpip('192.168.1.10', 7, 'NetworkRole', 'client');
fopen(t);
a = ['S' 'a' 'l' 'a' 'r' 'N' 'o' 'u' 'r' 'i' 'K' 'o' 'u' 'n' 'i'];
fwrite(t,a);
% pause (0.1)
data = fread(t, 12);
char(data)