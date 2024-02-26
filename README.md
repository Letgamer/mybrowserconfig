# My Browser Configuration
For a more enjoyable and ad-free browsing experience on Windows. I aim for an almost entirely open-source setup for transparency and privacy reasons.

## <img src="https://cdn.jsdelivr.net/gh/walkxcode/dashboard-icons/png/chromium.png" width="30px"> Browser
To start, install the browser. We will be using ungoogled-chromium, known for being open-source, privacy-preserving, and free from proprietary dependencies.

You can download the newest windows release from [here](https://github.com/ungoogled-software/ungoogled-chromium-windows/releases).
Or install the latest version automatically via the [chromium.bat](https://github.com/Letgamer/mybrowserconfig/blob/main/chromium.bat)
Set chromium as the default browser after install.

In the next Step the necessary Chromium Flags should be changed.
Adhere to the [Flags Documentation](https://github.com/Letgamer/mybrowserconfig/blob/main/FLAGS.md).

## Browser settings
Configure the following settings in the browser:
**You and Google -> Sync and Google Services -> Improve search suggestions** Enable

**Privacy and Security -> Third-party cookies -> Send a "Do Not Track" request with your browsing traffic** Enable

**Privacy and Security -> Security -> Encrypt the names of sites you visit** Enable

**Privacy and Security -> Security -> Select DNS provider** `https://base.dns.mullvad.net/dns-query`

**Performance -> Memory Saver** Enable

**Search Engine -> Manage search engines and site search**

Change the searchengine, to add Google fill out the form like this:  
Search engine:  
`Google`  
Shortcut:  
`Google.de`  
URL with %s in place of query:  
`https://www.google.de/search?q=%s`  
Suggestions URL with %s in place of query:  
`https://www.google.com/complete/search?client=chrome&q=%s`

**System -> Continue running background apps when Chromium is closed** Enable

## Extensions
Pin all extensions in the provided installation order unless specified otherwise.

First, install the Chromium web store extension from [here](https://github.com/NeverDecaf/chromium-web-store/releases/).

This extension should always be pinned on the far right!

Next, navigate to the web store [here](https://chromewebstore.google.com/) and install the following extensions:

### <img src="https://wiki.adminforge.de/media/wikipedia/commons/0/05/UBlock_Origin.svg" width="30px"> uBlock Origin
uBlock Origin (uBO) is a CPU and memory-efficient wide-spectrum content blocker for Chromium and Firefox. It blocks ads, trackers, coin miners, popups, annoying anti-blockers, malware sites, etc.

[Github Repository](https://github.com/gorhill/uBlock)

Go to settings, scroll down, and either import the [backup file](https://github.com/Letgamer/mybrowserconfig/tree/main/extensions/uBlock-Origin) from the GitHub repository or customize it yourself.
### <img src="https://raw.githubusercontent.com/bitwarden/brand/e755957e1ae5b84521a4a2491b791e743936af1a/icons/icon.svg" width="30px"> Bitwarden
Bitwarden is a top-tier password manager supporting 2FA codes, YubiKey, and encrypted files. Making password managing easy!

[Github Repository](https://github.com/bitwarden/clients)

It is recommended to self-host your own Vaultwarden server as a Bitwarden backend. Public Vaultwarden servers are also available, e.g., pwbox.de or bitwarden.servicesforfree.com.
### <img src="https://raw.githubusercontent.com/wiki/OpenUserJS/OpenUserJS.org/images/violentmonkey_icon.min.svg?sanitize=true" width="30px"> Violentmonkey
Violentmonkey is a open source userscript manager providing userscript support for browsers.

[Github Repository](https://github.com/violentmonkey/violentmonkey)

Go to settings and import the [zip file](https://github.com/Letgamer/mybrowserconfig/tree/main/extensions/violentmonkey) provided by this repository or search for scripts on [OpenUserJS](https://openuserjs.org/) or [Greasy Fork](https://greasyfork.org/).
### <img src="https://pbs.twimg.com/profile_images/1105606704090267648/oyZUgnFr_400x400.png" width="30px"> Shodan
The Shodan plugin reveals where a website is hosted (country, city), who owns the IP, and what other services/ports are open at first glance.

Note: This extension is not open source and is proprietary!
### <img src="https://upload.wikimedia.org/wikipedia/commons/4/42/Tor_Snowflake_logo.svg" width="30px"> Snowflake
Snowflake allows global access to censored websites and applications over Tor for people from all over the world.

[Gitlab Repository](https://gitlab.torproject.org/tpo/anti-censorship/pluggable-transports/snowflake-webext/)

Enable the "Keep running when the browser is closed" option.
### <img src="https://github.com/NX211/homer-icons/raw/master/png/xbrowsersync.png" width="30px"> xBrowserSync
Browser syncing done securely, anonymously, and for free. It replaces Google's proprietary sync service.

[Github Repository](https://github.com/xbrowsersync/app)

Selfhosting your own backend server is recommended. Alternatively, you can use one of the following listened servers on [xbrowsersync.org](https://www.xbrowsersync.org/#services).
### <img src="https://upload.wikimedia.org/wikipedia/commons/9/90/ReturnYoutubeDislike.png" width="30px"> Return YouTube Dislike
Return YouTube Dislike is an open-source extension that restores the YouTube dislike count.

[Github Repository](https://github.com/Anarios/return-youtube-dislike)

Do not pin this extension!
### <img src="https://raw.githubusercontent.com/refined-github/refined-github/main/source/icon.png" width="30px"> Refined Github
Browser extension that simplifies the GitHub interface and adds useful features

[Github Repository](https://github.com/refined-github/refined-github)

Do not pin this extension!
### <img src="https://raw.githubusercontent.com/ajayyy/SponsorBlock/master/public/icons/LogoSponsorBlocker256px.png" width="30px"> SponsorBlock
SponsorBlock is an open-source crowdsourced browser extension to skip sponsor segments in YouTube videos.

[Github Repository](https://github.com/ajayyy/SponsorBlock)

Do not pin this extension!
### <img src="https://cdn.jsdelivr.net/gh/walkxcode/dashboard-icons/png/chromium.png" width="30px"> Chromium Update Notifier
A Chrome extension that notifies you when a new version of Ungoogled Chromium is available, based on when you installed the extension or last updated your browser.

[Github Repository](https://github.com/claudiodekker/chromium-update-notifier)

Pin this extension to the far right! Set the Version in the Extension settings correctly!
### <img src="https://gitlab.com/magnolia1234/bypass-paywalls-chrome-clean/-/raw/master/bypass-dark.png" width="30px"> BypassPaywallsClean
This Extension allows you to read articles from supported news websites that implement a paywall for free!

Download the CRX from [here](https://gitlab.com/magnolia1234/bypass-paywalls-chrome-clean/-/releases).
### <img src="https://libredirect.github.io/img/icon.svg" width="30px"> LibRedirect
A web extension that redirects YouTube, Twitter, TikTok, and other websites to alternative privacy-friendly frontends.

[Github Repository](https://github.com/libredirect/browser_extension)

Download the CRX from [here](https://libredirect.github.io/download_chromium.html)

Go to settings and Import the [settings](https://github.com/Letgamer/mybrowserconfig/tree/main/extensions/libredirect) provided in this repository.
