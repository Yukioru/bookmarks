# Настройка динамического IPv6 тоннеля через tunnelbroker.net

### Создание тоннелей роутов IPv6
Открываем `New Terminal` в роутере и вводим следующее:
1. Создаём интерфейс тоннеля 6to4
```
/interface 6to4 add disabled=no mtu=1280 name=sit1 remote-address=<<<Server IPv4 Address>>>
```
`<<<Server IPv4 Address>>>` - IPv4 адрес тоннеля (берётся в подробностях на tunnelbroker.net)


2. Создаём роут
```
/ipv6 route add comment="" disabled=no distance=1 dst-address=2000::/3 gateway=<<<Server IPv6 Address>>> scope=30 target-scope=10
```
`<<<Server IPv6 Address>>>` - IPv6 адрес тоннеля (берётся в подробностях на tunnelbroker.net)


3. Создаём IPv6 адрес
```
/ipv6 address add address=<<<Client IPv6 Address>>> advertise=no disabled=no eui-64=no interface=sit1
```
`<<<Client IPv6 Address>>>` - Ваш IPv6 адрес тоннеля (берётся в подробностях на tunnelbroker.net)



### В роутере создать запись в планировщике на каждый час со сл. содержимым:
```
# Update Hurricane Electric IPv6 Tunnel Client IPv4 address

:local HEtunnelinterface "<<<6to4 Interface name>>>"
:local HEtunnelid "<<<Tunnel ID>>>"
:local HEuserid "<<<Username>>>"
:local HEmd5pass "<<<Update Key>>>"
:local HEupdatehost "ipv4.tunnelbroker.net"
:local HEupdatepath "/nic/update"
:local WANinterface "<<<WAN Interface name>>>"
:local outputfile ("HE-" . $HEtunnelid . ".txt")

# Internal processing below...
# ----------------------------------
:local HEipv4addr

# Get WAN interface IP address
:set HEipv4addr [/ip address get [/ip address find interface=$WANinterface] address]
:set HEipv4addr [:pick [:tostr $HEipv4addr] 0 [:find [:tostr $HEipv4addr] "/"]]

:if ([:len $HEipv4addr] = 0) do={
   :log error ("Could not get IP for interface " . $WANinterface)
   :error ("Could not get IP for interface " . $WANinterface)
}

# Update the HEtunnelinterface with WAN IP
/interface 6to4 {
   :if ([get ($HEtunnelinterface) local-address] != $HEipv4addr) do={
      :log info ("Updating " . $HEtunnelinterface . " local-address with new IP " . $HEipv4addr . "...")
      set ($HEtunnelinterface) local-address=$HEipv4addr
   }
}

:log info ("Updating IPv6 Tunnel " . $HEtunnelid . " Client IPv4 address to new IP " . $HEipv4addr . "...")
/tool fetch mode=https \
                  host=($HEupdatehost) \
                  url=("https://" . $HEupdatehost . $HEupdatepath . \
                          "?hostname=" . $HEtunnelid . \
                          "&myip=" . $HEipv4addr) \
                  user=($HEuserid) \
                  password=($HEmd5pass) \
                  dst-path=($outputfile)
                  
:log info ([/file get ($outputfile) contents])
/file remove ($outputfile)
```

Заменяем переменные своими данными, где:
`<<<6to4 Interface name>>>` - имя интерфейса тоннеля 6to4.

`<<<Tunnel ID>>>` - номер хоста (берётся в подробностях на tunnelbroker.net)

`<<<Update Key>>>` - своеобразный токен (берётся в Advanced вкладке там же)

`<<<WAN Interface name>>>` - имя интерфейса WAN подключения (или интерфейс последовательного подключения, например PPPoE)
