docker ps | grep pihole > /dev/null 2>&1
if [ $? -eq 0 ]; then
    docker rm -f pihole
fi
docker run --net=bridge -e ServerIP=192.168.0.26 -p 80:80 -p 53:53/tcp -p 53:53/udp -e ServerIP=192.168.0.26 -e TZ=CA -e DNS1=1.1.1.1 -e DNS2=8.8.8.8 --dns=127.0.0.1 --dns=1.1.1.1 -e DNSSEC=true --name pihole -v "$(pwd)/pihole/etc/:/etc/pihole/" -v "$(pwd)/pihole/etc-dnsmasq.d/:/etc/dnsmasq.d/" --restart=unless-stopped -d pihole/pihole:latest
