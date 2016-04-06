cd /jffs/scripts
wget --no-check-certificate https://raw.githubusercontent.com/yunalan/Shanghai-Telecom-4k-iptv-with-merlin/master/4-start
chomod -R 0755 4k-start
cd /jffs/ss/redchn
rm -rf dnsmasq.postconf
wget --no-check-certificate https://raw.githubusercontent.com/yunalan/Shanghai-Telecom-4k-iptv-with-merlin/master/ss
mv ss dnsmasq.postconf
chmod -R 0755 dnsmasq.postconf
cd /jffs/scripts
rm -rf dnsmasq.postconf
wget --no-check-certificate https://raw.githubusercontent.com/yunalan/Shanghai-Telecom-4k-iptv-with-merlin/master/noss
mv noss dnsmasq.postconf
chmod -R 0755 dnsmasq.postconf
service restart_dnsmasq
cd
echo Finish!!! You Can Watch 4K IPTV In Lan4