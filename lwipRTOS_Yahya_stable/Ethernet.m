t = tcpip('192.168.1.10', 7, 'NetworkRole', 'client');
fopen(t);
fwrite(t, "SalarNouriKouni");