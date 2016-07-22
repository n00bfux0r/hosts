:: This script will create in first running backup of ORIGINAL/CURRENT hosts file in hosts.skel file.
:: If hosts.skel file exists, then NEW copy with customized unified hosts file will be copied to proper path.
:: Next DNS Cache will be refreshed.
:: YOU NEED RUNNING THIS BAT FILE IN COMMAND LINE PROMPT WITH ADMINISTRATOR PRIVILIGES
:: WGET NEEDS TO BE INSTALLED.
@ECHO OFF
if not exist "%WINDIR%\System32\drivers\etc\hosts.skel" (
	MOVE %WINDIR%\System32\drivers\etc\hosts %WINDIR%\System32\drivers\etc\hosts.skel
	GOTO :CLEARDNS
)
:CLEARDNS
	if not exist "C:\hoststmp" (
		mkdir c:\hoststmp\
	)
	c:
	cd c:\hoststmp
	wget --output-file=drugs.log https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts
echo 127.0.0.1 DefaultWebsite website >> hosts
echo. >> hosts
echo #Added by Trouba & Glenn vvvvvv >> hosts
echo 127.0.0.1 134.170.30.202 >> hosts
echo 127.0.0.1 137.116.81.24 >> hosts
echo 127.0.0.1 65.39.117.230 >> hosts
echo 127.0.0.1 a.ads1.msn.com >> hosts
echo 127.0.0.1 a.ads2.msads.net >> hosts
echo 127.0.0.1 a.ads2.msn.com >> hosts
echo 127.0.0.1 a.rad.msn.com >> hosts
echo 127.0.0.1 a-0001.a-msedge.net >> hosts
echo 127.0.0.1 a-0002.a-msedge.net >> hosts
echo 127.0.0.1 a-0003.a-msedge.net >> hosts
echo 127.0.0.1 a-0004.a-msedge.net >> hosts
echo 127.0.0.1 a-0005.a-msedge.net >> hosts
echo 127.0.0.1 a-0006.a-msedge.net >> hosts
echo 127.0.0.1 a-0007.a-msedge.net >> hosts
echo 127.0.0.1 a-0008.a-msedge.net >> hosts
echo 127.0.0.1 a-0009.a-msedge.net >> hosts
echo 127.0.0.1 ac3.msn.com >> hosts
echo 127.0.0.1 ad.doubleclick.net >> hosts
echo 127.0.0.1 adnexus.net >> hosts
echo 127.0.0.1 adnxs.com >> hosts
echo 127.0.0.1 ads.msn.com >> hosts
echo 127.0.0.1 ads1.msads.net >> hosts
echo 127.0.0.1 ads1.msn.com >> hosts
echo 127.0.0.1 aidps.atdmt.com >> hosts
echo 127.0.0.1 aka-cdn-ns.adtech.de >> hosts
echo 127.0.0.1 apps.skype.com >> hosts
echo 127.0.0.1 az361816.vo.msecnd.net >> hosts
echo 127.0.0.1 az512334.vo.msecnd.net >> hosts
echo 127.0.0.1 b.ads1.msn.com >> hosts
echo 127.0.0.1 b.ads2.msads.net >> hosts
echo 127.0.0.1 b.rad.msn.com >> hosts
echo 127.0.0.1 bs.serving-sys.com >> hosts
echo 127.0.0.1 c.atdmt.com >> hosts
echo 127.0.0.1 c.msn.com >> hosts
echo 127.0.0.1 cdn.atdmt.com >> hosts
echo 127.0.0.1 cdnjs.cloudflare.com.cdn.cloudflare.net >> hosts
echo 127.0.0.1 cdp1.public-trust.com >> hosts
echo 127.0.0.1 cds26.ams9.msecn.net >> hosts
echo 127.0.0.1 choice.microsoft.com >> hosts
echo 127.0.0.1 choice.microsoft.com.nsatc.net >> hosts
echo 127.0.0.1 compatexchange.cloudapp.net >> hosts
echo 127.0.0.1 corp.sts.microsoft.com >> hosts
echo 127.0.0.1 corpext.msitadfs.glbdns2.microsoft.com >> hosts
echo 127.0.0.1 cs1.wpc.v0cdn.net >> hosts
echo 127.0.0.1 db3aqu.atdmt.com >> hosts
echo 127.0.0.1 df.telemetry.microsoft.com >> hosts
echo 127.0.0.1 diagnostics.support.microsoft.com >> hosts
echo 127.0.0.1 e2835.dspb.akamaiedge.net >> hosts
echo 127.0.0.1 e7341.g.akamaiedge.net >> hosts
echo 127.0.0.1 e7502.ce.akamaiedge.net >> hosts
echo 127.0.0.1 e8218.ce.akamaiedge.net >> hosts
echo 127.0.0.1 ec.atdmt.com >> hosts
echo 127.0.0.1 fe2.update.microsoft.com.akadns.net >> hosts
echo 127.0.0.1 fe2.ws.microsoft.com.nsatc.net >> hosts
echo 127.0.0.1 feedback.microsoft-hohm.com >> hosts
echo 127.0.0.1 feedback.search.microsoft.com >> hosts
echo 127.0.0.1 feedback.windows.com >> hosts
echo 127.0.0.1 flex.msn.com >> hosts
echo 127.0.0.1 g.msn.com >> hosts
echo 127.0.0.1 h1.msn.com >> hosts
echo 127.0.0.1 hostedocsp.globalsign.com >> hosts
echo 127.0.0.1 i1.services.social.microsoft.com >> hosts
echo 127.0.0.1 i1.services.social.microsoft.com.nsatc.net >> hosts
echo 127.0.0.1 lb1.www.ms.akadns.net >> hosts
echo 127.0.0.1 li581-132.members.linode.com >> hosts
echo 127.0.0.1 live.rads.msn.com >> hosts
echo 127.0.0.1 m.adnxs.com >> hosts
echo 127.0.0.1 m.hotmail.com >> hosts
echo 127.0.0.1 msedge.net >> hosts
echo 127.0.0.1 msftncsi.com >> hosts
echo 127.0.0.1 msnbot-65-55-108-23.search.msn.com >> hosts
echo 127.0.0.1 msntest.serving-sys.com >> hosts
echo 127.0.0.1 oca.telemetry.microsoft.com >> hosts
echo 127.0.0.1 oca.telemetry.microsoft.com.nsatc.net >> hosts
echo 127.0.0.1 pre.footprintpredict.com >> hosts
echo 127.0.0.1 preview.msn.com >> hosts
echo 127.0.0.1 pricelist.skype.com >> hosts
echo 127.0.0.1 rad.live.com >> hosts
echo 127.0.0.1 rad.msn.com >> hosts
echo 127.0.0.1 redir.metaservices.microsoft.com >> hosts
echo 127.0.0.1 reports.wes.df.telemetry.microsoft.com >> hosts
echo 127.0.0.1 s.gateway.messenger.live.com >> hosts
echo 127.0.0.1 schemas.microsoft.akadns.net >> hosts
echo 127.0.0.1 secure.adnxs.com >> hosts
echo 127.0.0.1 secure.flashtalking.com >> hosts
echo 127.0.0.1 services.wes.df.telemetry.microsoft.com >> hosts
echo 127.0.0.1 settings-sandbox.data.microsoft.com >> hosts
echo 127.0.0.1 settings-win.data.microsoft.com >> hosts
echo 127.0.0.1 sls.update.microsoft.com.akadns.net >> hosts
echo 127.0.0.1 sO.2mdn.net >> hosts
echo 127.0.0.1 sqm.df.telemetry.microsoft.com >> hosts
echo 127.0.0.1 sqm.telemetry.microsoft.com >> hosts
echo 127.0.0.1 sqm.telemetry.microsoft.com.nsatc.net >> hosts
echo 127.0.0.1 static.2mdn.net >> hosts
echo 127.0.0.1 statsfe1.ws.microsoft.com >> hosts
echo 127.0.0.1 statsfe2.update.microsoft.com.akadns.net >> hosts
echo 127.0.0.1 statsfe2.ws.microsoft.com >> hosts
echo 127.0.0.1 survey.watson.microsoft.com >> hosts
echo 127.0.0.1 telecommand.telemetry.microsoft.com >> hosts
echo 127.0.0.1 telecommand.telemetry.microsoft.com.nsatc.net >> hosts
echo 127.0.0.1 telemetry.appex.bing.net >> hosts
echo 127.0.0.1 telemetry.appex.bing.net:443 >> hosts
echo 127.0.0.1 telemetry.microsoft.com >> hosts
echo 127.0.0.1 telemetry.urs.microsoft.com >> hosts
echo 127.0.0.1 ui.skype.com >> hosts
echo 127.0.0.1 view.atdmt.com >> hosts
echo 127.0.0.1 vortex.data.microsoft.com >> hosts
echo 127.0.0.1 vortex-bn2.metron.live.com.nsatc.net >> hosts
echo 127.0.0.1 vortex-cy2.metron.live.com.nsatc.net >> hosts
echo 127.0.0.1 vortex-sandbox.data.microsoft.com >> hosts
echo 127.0.0.1 vortex-win.data.microsoft.com >> hosts
echo 127.0.0.1 watson.live.com >> hosts
echo 127.0.0.1 watson.microsoft.com >> hosts
echo 127.0.0.1 watson.ppe.telemetry.microsoft.com >> hosts
echo 127.0.0.1 watson.telemetry.microsoft.com >> hosts
echo 127.0.0.1 watson.telemetry.microsoft.com.nsatc.net >> hosts
echo 127.0.0.1 wes.df.telemetry.microsoft.com >> hosts
echo 127.0.0.1 www.go.microsoft.akadns.net >> hosts
echo 127.0.0.1 www.msftncsi.com >> hosts
echo. >> hosts
echo 127.0.0.1 www.newsoftwares.net >> hosts
echo 127.0.0.1 newsoftwares.net >> hosts
echo 127.0.0.1 www.online-update.com >> hosts
echo 127.0.0.1 online-update.com >> hosts
echo 127.0.0.1 www.opensoftwareupdater.com >> hosts
echo 127.0.0.1 opensoftwareupdater.com >> hosts
echo 127.0.0.1 downloadoc.com >> hosts
echo 127.0.0.1 www.yac.mx >> hosts
echo 127.0.0.1 yac.mx >> hosts
echo 127.0.0.1 www.onclickads.com >> hosts
echo 127.0.0.1 onclickads.com >> hosts
echo 127.0.0.1 www.yourinstaller.com >> hosts
echo 127.0.0.1 yourinstaller.com >> hosts
echo 127.0.0.1 www.s.m2pub.com >> hosts
echo 127.0.0.1 s.m2pub.com >> hosts
echo 127.0.0.1 www.securejavaupdate.com >> hosts
echo 127.0.0.1 securejavaupdate.com >> hosts
echo 127.0.0.1 www.down.securejavaupdate.com >> hosts
echo 127.0.0.1 down.securejavaupdate.com >> hosts
echo 127.0.0.1 www.mplayerdownloader.com >> hosts
echo 127.0.0.1 mplayerdownloader.com >> hosts
echo 127.0.0.1 www.gomediainc.com >> hosts
echo 127.0.0.1 gomediainc.com >> hosts
echo 127.0.0.1 www.propellerpops.com >> hosts
echo 127.0.0.1 propellerpops.com >> hosts
echo 127.0.0.1 www.allmplayerversions.com >> hosts
echo 127.0.0.1 allmplayerversions.com >> hosts
echo 127.0.0.1 www.enjoymediafind.vv.cc >> hosts
echo 127.0.0.1 enjoymediafind.vv.cc >> hosts
echo 127.0.0.1 www.enjoymediafind.cc >> hosts
echo 127.0.0.1 enjoymediafind.cc >> hosts
echo 127.0.0.1 www.enjoymedia.vv.cc >> hosts
echo 127.0.0.1 enjoymedia.vv.cc >> hosts
echo 127.0.0.1 www.enjoymedia.cc >> hosts
echo 127.0.0.1 enjoymedia.cc >> hosts
echo 127.0.0.1 www.themediafilegroups.com >> hosts
echo 127.0.0.1 themediafilegroups.com >> hosts
echo 127.0.0.1 www.gamemazing.com >> hosts
echo 127.0.0.1 gamemazing.com >> hosts
echo 127.0.0.1 downloader-now.com >> hosts
echo 127.0.0.1 www.quibids.com >> hosts
echo 127.0.0.1 www.d.afdads.com >> hosts
echo 127.0.0.1 d.afdads.com >> hosts
echo 127.0.0.1 www.check4updates.com >> hosts
echo 127.0.0.1 check4updates.com >> hosts
echo 127.0.0.1 dl.antispyware-companies.co.cc >> hosts
echo 127.0.0.1 antispyware-companies.co.cc >> hosts
echo 127.0.0.1 antispyware-handphone.co.cc >> hosts
echo 127.0.0.1 www.dl.antispyware-companies.co.cc >> hosts
echo 127.0.0.1 www.antispyware-companies.co.cc >> hosts
echo 127.0.0.1 www.antispyware-handphone.co.cc >> hosts
echo 127.0.0.1 www.jijut.zapto.org >> hosts
echo 127.0.0.1 jijut.zapto.org >> hosts
echo 127.0.0.1 www.henzf.sytes.net >> hosts
echo 127.0.0.1 henzf.sytes.net >> hosts
echo 127.0.0.1 www.hwqb.sytes.net >> hosts
echo 127.0.0.1 hwqb.sytes.net >> hosts
echo 127.0.0.1 www.promo.karosgame.ru >> hosts
echo 127.0.0.1 promo.karosgame.ru >> hosts
echo 127.0.0.1 www.safetysoftwareengineering.com >> hosts
echo 127.0.0.1 safetysoftwareengineering.com >> hosts
echo 127.0.0.1 www.bestwebdeal.net >> hosts
echo 127.0.0.1 bestwebdeal.net >> hosts
echo 127.0.0.1 www.hollywire.com >> hosts
echo 127.0.0.1 hollywire.com >> hosts
echo 127.0.0.1 www.ourstage.com >> hosts
echo 127.0.0.1 ourstage.com >> hosts
echo 127.0.0.1 www.herdaily.com >> hosts
echo 127.0.0.1 www.0stats.com >> hosts
echo 127.0.0.1 0stats.com >> hosts
echo 127.0.0.1 www.theexgirlfriends.com >> hosts
echo 127.0.0.1 theexgirlfriends.com >> hosts
echo 127.0.0.1 www.morefreecamsecrets.com >> hosts
echo 127.0.0.1 morefreecamsecrets.com >> hosts
echo 127.0.0.1 www.movieplayerupdate.com >> hosts
echo 127.0.0.1 movieplayerupdate.com >> hosts
echo 127.0.0.1 www.software-downoad-free.com >> hosts
echo 127.0.0.1 software-downoad-free.com >> hosts
echo 127.0.0.1 www.offerdeliver.com >> hosts
echo 127.0.0.1 offerdeliver.com >> hosts
echo 127.0.0.1 www.xdating.com >> hosts
echo 127.0.0.1 xdating.com >> hosts
echo 127.0.0.1 www.morefreecamsecrets.com >> hosts
echo 127.0.0.1 morefreecamsecrets.com >> hosts
echo 127.0.0.1 www.kovla.com >> hosts
echo 127.0.0.1 kovla.com >> hosts
echo 127.0.0.1 www.update91.com >> hosts
echo 127.0.0.1 www.update92.com >> hosts
echo 127.0.0.1 www.update93.com >> hosts
echo 127.0.0.1 www.update94.com >> hosts
echo 127.0.0.1 www.update95.com >> hosts
echo 127.0.0.1 www.update96.com >> hosts
echo 127.0.0.1 www.update97.com >> hosts
echo 127.0.0.1 www.update98.com >> hosts
echo 127.0.0.1 www.update99.com >> hosts
echo 127.0.0.1 update91.com >> hosts
echo 127.0.0.1 update92.com >> hosts
echo 127.0.0.1 update93.com >> hosts
echo 127.0.0.1 update94.com >> hosts
echo 127.0.0.1 update95.com >> hosts
echo 127.0.0.1 update96.com >> hosts
echo 127.0.0.1 update97.com >> hosts
echo 127.0.0.1 update98.com >> hosts
echo 127.0.0.1 update99.com >> hosts
echo 127.0.0.1 www.dinnerwithmariah.com >> hosts
echo 127.0.0.1 dinnerwithmariah.com >> hosts
echo #Added by Trouba & Glenn ^^^^^^ >> hosts
echo. >> hosts
echo 127.0.0.1 ServerInfo httpd.info >> hosts
echo 127.0.0.1 bandicam.com >> hosts
echo 127.0.0.1 ssl.bandisoft.com >> hosts
	COPY hosts %WINDIR%\System32\drivers\etc\
	ipconfig /flushdns
		ipconfig /flushdns
			ipconfig /flushdns
				ipconfig /flushdns
					ipconfig /flushdns
	GOTO END
:END
