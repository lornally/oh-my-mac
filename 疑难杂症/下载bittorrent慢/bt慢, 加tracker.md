> bt慢有各种原因

###### 常规

- BT / 磁力 / eD2k都是P2P技术，都是同时下载的人越多，你的下载速度也会越快，遇到这些资源下不动的原因：

1. 一些冷门（违规）的资源，能用百度云 / 115离线下载就不要用BT，用BT下载首先尝试迅雷下载，下载不动表示迅雷服务器里没有这个资源
2. 换用其他下载器还是下不动，表示这多半就是个冷门资源，*几乎没人在下载 = 几乎没人传上传资源给你*，解决办法是不要吊死在一颗种子上，增强自己获取优质种子的能力，即多换种子，找到热门种子
3. 下载到一半就下载不动了：表示这个冷门资源，其他和你一起下载的人离线了（或者下载完后就关机了），你可以尝试换时间段进行下载（某些资源晚上下载会更多）
4. 如果因为种子中提供的 Tracker 服务器太少（或者说被封了），导致你找不到其他正在下载的人，添加更多的Tracker服务器则可能会有帮助，关于如何在BT下载器中添加 Tracker 服务器，阿虚曾经提供的软件压缩包里就有详细的教程，这里不多做说明：[可能是最全的BT种子 / 磁力 / eD2K链接下载工具合集](https://link.zhihu.com/?target=https%3A//mp.weixin.qq.com/s/NtT1ugq5p4CIvzkdWlPHSQ)

- 链接
  - 迅雷链接，包括曾经的快车链接、旋风链接都不是协议，只是单纯对字符串做一些编码操作，好让别的下载软件识别不了，而自家的软件因为知道解码规则所以可以。
  - 但是网上有可以解码的工具：[https://tool.lu/urlconvert/](https://link.zhihu.com/?target=https%3A//tool.lu/urlconvert/)

- 最后说一下一个常见的问题：下载到99%下载不动了怎么办
  - 这种情况其实是在最后完成时的校验过程中，发现个别块有问题需要重下，于是就卡在这里。
  - 如果是媒体格式，如视频，其实可以手动停止，然后改扩展名：
    - 这种未下载完成的文件一般迅雷是在「原视频文件格式后缀」后面加上「缓存文件格式后缀」
    - 比如`XXX.mp4.xltd`，你只需要多余的缓存文件格式后缀去掉，改为：`XXX.mp4`，就能播放了，而且基本不影响整体体验（如果你用过迅雷的边下边播，大概就能理解）
  - 但如果你下载的是程序，压缩包等，这种改后缀的方式，就有很大风险，改完后不能运行和解压
  - 还有种情况是种子内某个文件无源，比如一些BT种子里面包含了电影和字幕；而卡在99%下载不动就是因为字幕文件下载不动，在BT软件中查看下把完成0%的文件前面的勾去掉，就能顺利下载了

###### 这几个地方有tracker列表

```sh
https://torrents.me/tracker-list/
https://newtrackon.com/list
https://github.com/ngosang/trackerslist
```

- https://torrents.me/tracker-list/
- https://newtrackon.com/list
- https://github.com/ngosang/trackerslist
- https://dns.icoa.cn/tracker/



###### 参考

- https://zhuanlan.zhihu.com/p/85135793
- https://www.icoa.cn/a/849.html
- https://mp.weixin.qq.com/s/8pq51vkhiNh-y2eNyBdsiQ
- 储物间:  http://axutongxue.com/
- https://axutongxue.github.io/
- 终点关注: https://zhuanlan.zhihu.com/p/85652893

###### qbittorrent

1. 设置->bittorrent-> 自动添加trackers
2. 设置-> 高级->总是向同级所有tracker汇报

- 参考: https://www.icoa.cn/a/869.html



###### tracker完整列表

```
http://104.28.1.30:8080/announce

http://104.28.16.69/announce

http://104.28.16.69:80/announce

http://1337.abcvg.info:80/announce

http://178.175.143.27/announce

http://185.148.3.231:80/announce

http://193.37.214.12:6969/announce

http://194.106.216.222/announce

http://195.201.31.194:80/announce

http://51.79.71.167:80/announce

http://51.81.46.170:6969/announce

http://54.36.126.137:6969/announce

http://54.39.179.91:6699/announce

http://60-fps.org:80/bt:80/announce.php

http://81.200.2.231/announce

http://85.17.19.180/announce

http://87.253.152.137/announce

http://91.216.110.47/announce

http://93.92.64.5/announce

http://95.107.48.115:80/announce

http://all4nothin.net:80/announce.php

http://alltorrents.net:80/bt:80/announce.php

http://atrack.pow7.com:80/announce

http://big-boss-tracker.net:80/announce.php

http://bithq.org:80/announce.php

http://bt-tracker.gamexp.ru:2710/announce

http://bt.3dmgame.com:2710/announce

http://bt.3kb.xyz:80/announce

http://bt.ali213.net:8080/announce

http://bt.edwardk.info:4040/announce

http://bt.firebit.org:2710/announce

http://bt.unionpeer.org:777/announce

http://bt.zlofenix.org:81/announce

http://bt2.edwardk.info:6969/announce

http://bttracker.debian.org:6969/announce

http://btx.anifilm.tv:80/announce.php

http://concen.org:6969/announce

http://data-bg.net:80/announce.php

http://datascene.net:80/announce.php

http://explodie.org:6969/announce

http://finbytes.org:80/announce.php

http://h4.trakx.nibba.trade:80/announce

http://ipv4announce.sktorrent.eu:6969/announce

http://irrenhaus.dyndns.dk:80/announce.php

http://kaztorka.org:80/announce.php

http://kinorun.com:80/announce.php

http://masters-tb.com:80/announce.php

http://mediaclub.tv:80/announce.php

http://music-torrent.net:2710/announce

http://mvgroup.org:2710/announce

http://ns3107607.ip-54-36-126.eu:6969/announce

http://open.acgnxtracker.com:80/announce

http://open.touki.ru:80/announce.php

http://opentracker.i2p.rocks:6969/announce

http://opentracker.xyz:80/announce

http://pow7.com:80/announce

http://proaudiotorrents.org:80/announce.php

http://retracker.telecom.by:80/announce

http://rt.tace.ru:80/announce

http://secure.pow7.com:80/announce

http://share.camoe.cn:8080/announce

http://siambit.com:80/announce.php

http://t.acg.rip:6699/announce

http://t.nyaatracker.com:80/announce

http://t.overflow.biz:6969/announce

http://t1.pow7.com:80/announce

http://t2.pow7.com:80/announce

http://torrent-team.net:80/announce.php

http://torrent.arjlover.net:2710/announce

http://torrent.fedoraproject.org:6969/announce

http://torrent.mp3quran.net:80/announce.php

http://torrent.nwps.ws:80/announce

http://torrent.resonatingmedia.com:6969/announce

http://torrent.rus.ec:2710/announce

http://torrent.ubuntu.com:6969/announce

http://torrentclub.online:54123/announce

http://torrentsmd.com:8080/announce

http://tr.cili001.com:8070/announce

http://tracker-cdn.moeking.me:2095/announce

http://tracker.ali213.net:8080/announce

http://tracker.anirena.com:80/announce

http://tracker.anirena.com:80/b16a15d9a238d1f59178d3614b857290/announce

http://tracker.bt4g.com:2095/announce

http://tracker.dler.org:6969/announce

http://tracker.fdn.fr:6969/announce

http://tracker.files.fm:6969/announce

http://tracker.gbitt.info:80/announce

http://tracker.gcvchp.com:2710/announce

http://tracker.gigatorrents.ws:2710/announce

http://tracker.ipv6tracker.ru:80/announce

http://tracker.lelux.fi:80/announce

http://tracker.loadbt.com:6969/announce

http://tracker.minglong.org:8080/announce

http://tracker.nighthawk.pw:2052/announce

http://tracker.noobsubs.net:80/announce

http://tracker.opentrackr.org:1337/announce

http://tracker.pow7.com:80/announce

http://tracker.pussytorrents.org:3000/announce

http://tracker.shittyurl.org:80/announce

http://tracker.skyts.cn:6969/announce

http://tracker.skyts.net:6969/announce

http://tracker.sloppyta.co:80/announce

http://tracker.tambovnet.org:80/announce.php

http://tracker.tasvideos.org:6969/announce

http://tracker.trackerfix.com:80/announce

http://tracker.xdvdz.com:2710/announce

http://tracker.yoshi210.com:6969/announce

http://tracker1.itzmx.com:8080/announce

http://tracker2.dler.org:80/announce

http://tracker2.itzmx.com:6961/announce

http://tracker3.dler.org:2710/announce

http://trk.publictracker.xyz:6969/announce

http://vpn.flying-datacenter.de:6969/announce

http://vps02.net.orel.ru:80/announce

http://www.all4nothin.net:80/announce.php

http://www.legittorrents.info:80/announce.php

http://www.thetradersden.org/forums/tracker:80/announce.php

http://www.tribalmixes.com:80/announce.php

http://www.xwt-classics.net:80/announce.php

https://1337.abcvg.info:443/announce

https://bt.nfshost.com:443/announce

https://torrents.linuxmint.com:443/announce.php

https://tr.ready4.icu:443/announce

https://tr.steins-gate.moe:2096/announce

https://tracker.bt-hash.com:443/announce

https://tracker.coalition.space:443/announce

https://tracker.foreverpirates.co:443/announce

https://tracker.gbitt.info:443/announce

https://tracker.hama3.net:443/announce

https://tracker.imgoingto.icu:443/announce

https://tracker.iriseden.eu:443/announce

https://tracker.lelux.fi:443/announce

https://tracker.lilithraws.cf:443/announce

https://tracker.nanoha.org:443/announce

https://tracker.nitrix.me:443/announce

https://tracker.parrotsec.org:443/announce

https://tracker.sloppyta.co:443/announce

https://tracker.tamersunion.org:443/announce

https://trakx.herokuapp.com:443/announce

https://w.wwwww.wtf:443/announce

udp://103.196.36.31:6969/announce

udp://103.30.17.23:6969/announce

udp://104.238.159.144:6969/announce

udp://104.244.153.245:6969/announce

udp://104.244.72.77:1337/announce

udp://109.248.43.36:6969/announce

udp://119.28.134.203:6969/announce

udp://138.68.171.1:6969/announce

udp://144.76.35.202:6969/announce

udp://148.251.53.72:6969/announce

udp://149.28.47.87:1738/announce

udp://151.236.218.182:6969/announce

udp://151.80.120.114:2710/announce

udp://156.234.201.18:80/announce

udp://157.90.161.74:6969/announce

udp://157.90.169.123:80/announce

udp://159.65.202.134:6969/announce

udp://159.69.208.124:6969/announce

udp://163.172.170.127:6969/announce

udp://167.179.77.133:1/announce

udp://168.235.67.63:6969/announce

udp://173.212.223.237:6969/announce

udp://176.123.5.238:3391/announce

udp://178.159.40.252:6969/announce

udp://178.33.73.26:2710/announce

udp://185.181.60.67:80/announce

udp://185.21.216.185:6969/announce

udp://185.243.215.40:6969/announce

udp://185.8.156.2:6969/announce

udp://185.86.149.205:1337/announce

udp://191.101.229.236:1337/announce

udp://193.34.92.5:80/announce

udp://195.123.209.40:80/announce

udp://195.201.94.195:6969/announce

udp://198.100.149.66:6969/announce

udp://198.50.195.216:7777/announce

udp://199.195.249.193:1337/announce

udp://199.217.118.72:6969/announce

udp://205.185.121.146:6969/announce

udp://208.83.20.20:6969/announce

udp://209.141.45.244:1337/announce

udp://209.141.59.16:6969/announce

udp://212.1.226.176:2710/announce

udp://212.83.181.109:6969/announce

udp://217.12.218.177:2710/announce

udp://37.235.174.46:2710/announce

udp://37.59.48.81:6969/announce

udp://45.33.83.49:6969/announce

udp://45.56.65.82:54123/announce

udp://45.76.92.209:6969/announce

udp://45.77.100.109:6969/announce

udp://46.101.244.237:6969/announce

udp://46.148.18.250:2710/announce

udp://46.148.18.254:2710/announce

udp://46.4.109.148:6969/announce

udp://47.ip-51-68-199.eu:6969/announce

udp://5.206.31.154:6969/announce

udp://51.15.2.221:6969/announce

udp://51.15.41.46:6969/announce

udp://51.254.244.161:6969/announce

udp://51.68.199.47:6969/announce

udp://51.68.34.33:6969/announce

udp://51.77.134.13:6969/announce

udp://51.77.58.98:6969/announce

udp://51.79.81.233:6969/announce

udp://52.58.128.163:6969/announce

udp://62.138.0.158:6969/announce

udp://62.168.229.166:6969/announce

udp://6ahddutb1ucc3cp.ru:6969/announce

udp://6rt.tace.ru:80/announce

udp://78.30.254.12:2710/announce

udp://88.99.142.4:8000/announce

udp://89.234.156.205:80/announce

udp://9.rarbg.com:2710/announce

udp://9.rarbg.me:2710/announce

udp://9.rarbg.me:2780/announce

udp://9.rarbg.to:2710/announce

udp://9.rarbg.to:2730/announce

udp://91.121.145.207:6969/announce

udp://91.149.192.31:6969/announce

udp://91.216.110.52:451/announce

udp://94.23.183.33:6969/announce

udp://admin.videoenpoche.info:6969/announce

udp://anidex.moe:6969/announce

udp://app.icon256.com:8000/announce

udp://bt.okmp3.ru:2710/announce

udp://bt2.3kb.xyz:6969/announce

udp://bubu.mapfactor.com:6969/announce

udp://cdn-1.gamecoast.org:6969/announce

udp://cdn-2.gamecoast.org:6969/announce

udp://code2chicken.nl:6969/announce

udp://concen.org:6969/announce

udp://cutiegirl.ru:6969/announce

udp://daveking.com:6969/announce

udp://discord.heihachi.pw:6969/announce

udp://drumkitx.com:6969/announce

udp://edu.uifr.ru:6969/announce

udp://engplus.ru:6969/announce

udp://exodus.desync.com:6969/announce

udp://explodie.org:6969/announce

udp://fe.dealclub.de:6969/announce

udp://free-tracker.zooki.xyz:6969/announce

udp://free.publictracker.xyz:6969/announce

udp://inferno.demonoid.is:3391/announce

udp://ipv4.tracker.harry.lu:80/announce

udp://ipv6.tracker.harry.lu:80/announce

udp://ipv6.tracker.zerobytes.xyz:16661/announce

udp://johnrosen1.com:6969/announce

udp://line-net.ru:6969/announce

udp://ln.mtahost.co:6969/announce

udp://mail.realliferpg.de:6969/announce

udp://movies.zsw.ca:6969/announce

udp://mts.tvbit.co:6969/announce

udp://nagios.tks.sumy.ua:80/announce

udp://newtoncity.org:6969/announce

udp://open.demonii.com:1337/announce

udp://open.lolicon.eu:7777/announce

udp://open.publictracker.xyz:6969/announce

udp://open.stealth.si:80/announce

udp://open.tracker.cl:1337/announce

udp://openbittorrent.com:80/announce

udp://opentor.org:2710/announce

udp://opentracker.i2p.rocks:6969/announce

udp://opentrackr.org:1337/announce

udp://p4p.arenabg.com:1337/announce

udp://peerfect.org:6969/announce

udp://peru.subventas.com:53/announce

udp://public-tracker.zooki.xyz:6969/announce

udp://public.popcorn-tracker.org:6969/announce

udp://public.publictracker.xyz:6969/announce

udp://public.tracker.vraphim.com:6969/announce

udp://qg.lorzl.gq:2710/announce

udp://qg.lorzl.gq:6969/announce

udp://retracker.hotplug.ru:2710/announce

udp://retracker.lanta-net.ru:2710/announce

udp://retracker.netbynet.ru:2710/announce

udp://retracker.nts.su:2710/announce

udp://retracker.sevstar.net:2710/announce

udp://sugoi.pomf.se:80/announce

udp://t1.leech.ie:1337/announce

udp://t2.leech.ie:1337/announce

udp://t3.leech.ie:1337/announce

udp://thetracker.org:80/announce

udp://torrentclub.online:54123/announce

udp://tr.bangumi.moe:6969/announce

udp://tr2.ysagin.top:2710/announce

udp://tracker.0x.tf:6969/announce

udp://tracker.altrosky.nl:6969/announce

udp://tracker.army:6969/announce

udp://tracker.beeimg.com:6969/announce

udp://tracker.birkenwald.de:6969/announce

udp://tracker.bittor.pw:1337/announce

udp://tracker.blacksparrowmedia.net:6969/announce

udp://tracker.btsync.gq:2710/announce

udp://tracker.coppersurfer.tk:6969/announce

udp://tracker.cyberia.is:6969/announce

udp://tracker.dler.org:6969/announce

udp://tracker.e-utp.net:6969/announce

udp://tracker.edkj.club:6969/announce

udp://tracker.filemail.com:6969/announce

udp://tracker.flashtorrents.org:6969/announce

udp://tracker.grepler.com:6969/announce

udp://tracker.ilibr.org:80/announce

udp://tracker.internetwarriors.net:1337/announce

udp://tracker.kali.org:6969/announce

udp://tracker.kuroy.me:5944/announce

udp://tracker.lelux.fi:6969/announce

udp://tracker.moeking.me:6969/announce

udp://tracker.nighthawk.pw:2052/announce

udp://tracker.nrx.me:6969/announce

udp://tracker.open-internet.nl:6969/announce

udp://tracker.openbittorrent.com:80/announce

udp://tracker.opentrackr.org:1337/announce

udp://tracker.piratepublic.com:1337/announce

udp://tracker.sbsub.com:2710/announce

udp://tracker.shkinev.me:6969/announce

udp://tracker.sktorrent.net:6969/announce

udp://tracker.skyts.net:6969/announce

udp://tracker.swateam.org.uk:2710/announce

udp://tracker.theoks.net:6969/announce

udp://tracker.tiny-vps.com:6969/announce

udp://tracker.torrent.eu.org:451/announce

udp://tracker.tricitytorrents.com:2710/announce

udp://tracker.tvunderground.org.ru:3218/announce

udp://tracker.uw0.xyz:6969/announce

udp://tracker.v6speed.org:6969/announce

udp://tracker.zerobytes.xyz:1337/announce

udp://tracker0.ufibox.com:6969/announce

udp://tracker1.bt.moack.co.kr:80/announce

udp://tracker2.christianbro.pw:6969/announce

udp://tracker2.dler.org:80/announce

udp://tracker4.itzmx.com:2710/announce

udp://u.wwwww.wtf:1/announce

udp://udp-tracker.shittyurl.org:6969/announce

udp://us-tracker.publictracker.xyz:6969/announce

udp://valakas.rollo.dnsabr.com:2710/announce

udp://vibe.community:6969/announce

udp://vibe.sleepyinternetfun.xyz:1738/announce

udp://www.mvgroup.org:2710/announce

udp://www.torrent.eu.org:451/announce

udp://zer0day.ch:1337/announce

udp://zer0day.to:1337/announce

ws://tracker.nighthawk.pw:4201/announce

ws://tracker.sloppyta.co:80/announce
```

