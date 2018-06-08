i1 = "127.";
i2 = "16.";
i3 = "2.";
i4 = 58;
var ip2 = i1+i2+i3+string(i4);
var result = network_connect(socket, ip2, 8080);
while (result < 0) {
    i4++;
    ip2 = i1+i2+i3+string(i4);
    result = network_connect(socket, ip2, 8080);
}
return result;
//network_send_broadcast
