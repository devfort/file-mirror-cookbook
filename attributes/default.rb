default['file_mirror']['user'] = 'fort'
default['file_mirror']['data_dir'] = '/data/files'
default['file_mirror']['apache']['listen_hostname'] = 'files.fort'
default['file_mirror']['apache']['listen_port'] = '80'

default['file_mirror']['command'] = 'wget -N --no-check-certificate %{args} %{url}'

default['file_mirror']['files'] = {
  'linux-kernel' => {
    'source' => { url: 'http://www.kernel.org/pub/linux/kernel/v3.0/linux-3.0.1.tar.bz2', },
  },
  'minix' => {
    'image' => { url: 'http://www.minix3.org/download/minix3_2_0_usb_20110722_1e56737131.img.bz2', }
  },
  'django' => {
    'source' => { url: 'http://www.djangoproject.com/download/1.3/tarball/', },
  },
  'espeak' => {
    'mac' => { url: 'http://kent.dl.sourceforge.net/sourceforge/espeak/espeak-1.45.04-OSX.zip', },
    'source' => { url: 'http://kent.dl.sourceforge.net/sourceforge/espeak/espeak-1.45.04-source.zip', },
    'win' => { url: 'http://kent.dl.sourceforge.net/sourceforge/espeak/espeak-1.45.04-win.zip', },
  },
  'erlang' => {
    'source' => { url: 'http://www.erlang.org/download/otp_src_R14B03.tar.gz', },
    'win' => { url: 'http://www.erlang.org/download/otp_win32_R14B03.exe', },
    'docs' => { url: 'http://www.erlang.org/download/otp_doc_html_R14B03.tar.gz', },
  },
  'apache-httpd' => {
    'source' => { url: 'http://mirror.fubra.com/ftp.apache.org/httpd/httpd-2.2.19.tar.bz2', },
    'win' => { url: 'http://mirrors.enquira.co.uk/apache//httpd/binaries/win32/httpd-2.2.19-win32-x86-openssl-0.9.8r.msi', },
    'dev-source' => { url: 'http://mirrors.enquira.co.uk/apache//httpd/httpd-2.3.12-beta-deps.tar.bz2', },
    'dev-deps' => { url: 'http://mirrors.enquira.co.uk/apache//httpd/httpd-2.3.12-beta.tar.bz2', },
  },
  'jquery' => {
    'uncompressed' => { url: 'http://code.jquery.com/jquery-1.6.2.js', },
    'minified' => { url: 'http://code.jquery.com/jquery-1.6.2.min.js', },
    'apiref' => { url: 'http://view.jquery.com/trunk/tools/api-browser/jquery-api-browser.zip', },
    'ui' => { url: 'http://jqueryui.com/download/jquery-ui-1.8.14.custom.zip', },
  },
  'llvm' => {
    'source' => { url: 'http://llvm.org/releases/2.9/llvm-2.9.tgz', },
    'clang' => { url: 'http://llvm.org/releases/2.9/clang-2.9.tgz', },
    'clang-mac' => { url: 'http://llvm.org/releases/2.9/clang+llvm-2.9-x86_64-apple-darwin10.tar.gz', },
    'gcc4' => { url: 'http://llvm.org/releases/2.9/llvm-gcc-4.2-2.9.source.tgz', },
    'gcc4-mac' => { url: 'http://llvm.org/releases/2.9/llvm-gcc-4.2-2.9-x86_64-apple-darwin10.tar.gz', },
  },
  'nginx' => {
    'source' => { url: 'http://nginx.org/download/nginx-1.0.5.tar.gz', },
    'win' => { url: 'http://nginx.org/download/nginx-1.0.5.zip', },
  },
  'python2' => {
    'source' => { url: 'http://www.python.org/ftp/python/2.7.2/Python-2.7.2.tar.bz2', },
    'win32' => { url: 'http://www.python.org/ftp/python/2.7.2/python-2.7.2.msi', },
    'win' => { url: 'http://www.python.org/ftp/python/2.7.2/python-2.7.2.amd64.msi', },
    'mac' => { url: 'http://www.python.org/ftp/python/2.7.2/python-2.7.2-macosx10.6.dmg', },
    'mac32' => { url: 'http://www.python.org/ftp/python/2.7.2/python-2.7.2-macosx10.3.dmg', },
  },
  'python3' => {
    'source' => { url: 'http://www.python.org/ftp/python/3.2.1/Python-3.2.1.tar.bz2', },
    'win32' => { url: 'http://www.python.org/ftp/python/3.2.1/python-3.2.1.msi', },
    'win' => { url: 'http://www.python.org/ftp/python/3.2.1/python-3.2.1.amd64.msi', },
    'mac' => { url: 'http://www.python.org/ftp/python/3.2.1/python-3.2.1-macosx10.6.dmg', },
    'mac32' => { url: 'http://www.python.org/ftp/python/3.2.1/python-3.2.1-macosx10.3.dmg', },
  },
  'ruby1.9' => {
    'source' => { url: 'http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.2-p290.tar.gz', },
    'win' => { url: 'http://rubyforge.org/frs/download.php/75127/rubyinstaller-1.9.2-p290.exe', },
  },
  'twisted' => {
    'source' => { url: 'http://pypi.python.org/packages/source/T/Twisted/Twisted-11.0.0.tar.bz2#md5=d7f94a1609a1b8f3b8c8d0146d4cfe54', },
    'win-python2.5' => { url: 'http://pypi.python.org/packages/2.5/T/Twisted/Twisted-11.0.0.winxp32-py2.5.msi#md5=bef10a63f64301539658c48fe52b37e8', },
    'win-python2.6' => { url: 'http://pypi.python.org/packages/2.6/T/Twisted/Twisted-11.0.0.winxp32-py2.6.msi#md5=b3f1f194c9256c5e9ce362d0cf2a6036', },
    'win-python2.7' => { url: 'http://pypi.python.org/packages/2.7/T/Twisted/Twisted-11.0.0.winxp32-py2.7.msi#md5=edc63d41222fdb9ef4545ee33931eca0', },
  },
  'varnish2' => {
    'source' => { url: 'http://repo.varnish-cache.org/source/varnish-2.1.5.tar.gz', },
  },
  'varnish3' => {
    'source' => { url: 'http://repo.varnish-cache.org/source/varnish-3.0.0.tar.gz', },
  },
  'xapian' => {
    'core' => { url: 'http://oligarchy.co.uk/xapian/1.2.6/xapian-core-1.2.6.tar.gz', },
    'bindings' => { url: 'http://oligarchy.co.uk/xapian/1.2.6/xapian-bindings-1.2.6.tar.gz', },
    'omega' => { url: 'http://oligarchy.co.uk/xapian/1.2.6/xapian-omega-1.2.6.tar.gz', },
    'XapianSearch' => { url: 'http://oligarchy.co.uk/xapian/1.2.6/Search-Xapian-1.2.6.0.tar.gz', },
    'wiki' => { url: 'http://oligarchy.co.uk/xapian/trac.xapian.org.tar.gz', },
  },
  'tokyo-cabinet' => {
    'source' => { url: 'http://fallabs.com/tokyocabinet/tokyocabinet-1.4.47.tar.gz', },
  },
  'tokyo-tyrant' => {
    'source' => { url: 'http://fallabs.com/tokyotyrant/tokyotyrant-1.1.41.tar.gz', },
  },
  'tokyo-dystopia' => {
    'source' => { url: 'http://fallabs.com/tokyodystopia/tokyodystopia-0.9.15.tar.gz', },
  },
  'tokyo-promenade' => {
    'source' => { url: 'http://fallabs.com/tokyopromenade/tokyopromenade-0.9.22.tar.gz', },
  },
  'kyoto-cabinet' => {
    'source' => { url: 'http://fallabs.com/kyotocabinet/pkg/kyotocabinet-1.2.70.tar.gz', },
    'python2' => { url: 'http://fallabs.com/kyotocabinet/pythonlegacypkg/kyotocabinet-python-legacy-1.16.tar.gz', },
    'python3' => { url: 'http://fallabs.com/kyotocabinet/pythonpkg/kyotocabinet-python-1.20.tar.gz', },
    'ruby' => { url: 'http://fallabs.com/kyotocabinet/rubypkg/kyotocabinet-ruby-1.27.tar.gz', },
  },
  'diveintopython' => {
    'pdf' => { url: 'http://diveintopython.org/download/diveintopython-pdf-5.4.zip', },
  },
  'diveintopython3' => {
    'pdf' => { url: 'http://diveintopython3.org/d/diveintopython3-pdf-latest.zip', },
  },
  'rabbitmq' => {
    'source' => { url: 'http://www.rabbitmq.com/releases/rabbitmq-server/v2.5.1/rabbitmq-server-2.5.1.tar.gz', },
    'win' => { url: 'http://www.rabbitmq.com/releases/rabbitmq-server/v2.5.1/rabbitmq-server-2.5.1.exe', },
    'deb' => { url: 'http://www.rabbitmq.com/releases/rabbitmq-server/v2.5.1/rabbitmq-server_2.5.1-1_all.deb', },
  },
  'mongodb' => {
    'mac' => { url: 'http://fastdl.mongodb.org/osx/mongodb-osx-i386-1.8.2.tgz', },
    'mac64' => { url: 'http://fastdl.mongodb.org/osx/mongodb-osx-x86_64-1.8.2.tgz', },
    'win' => { url: 'http://downloads.mongodb.org/win32/mongodb-win32-i386-1.8.2.zip', },
    'source' => { url: 'http://downloads.mongodb.org/src/mongodb-src-r1.8.2.tar.gz', },
  },
  'thrift' => {
    'source' => { url: 'http://www.apache.org/dyn/closer.cgi?path=/thrift/0.6.1/thrift-0.6.1.tar.gz', },
  },
  'hypertable' => {
    'source' => { url: 'http://hypertable.org/download.php?v=0.9.5.0', },
  },
  'adobe-flash-player' => {
    'win' => { url: 'http://fpdownload.adobe.com/get/flashplayer/current/install_flash_player_ax.exe', },
    'win-non-ie' => { url: 'http://fpdownload.adobe.com/get/flashplayer/current/install_flash_player.exe', },
    'mac' => { url: 'http://fpdownload.macromedia.com/get/flashplayer/current/install_flash_player_osx_ub.dmg', },
    'linux' => { url: 'http://fpdownload.macromedia.com/get/flashplayer/current/install_flash_player_10_linux.tar.gz', },
  },
  'firefox' => {
    'win' => { url: 'http://download.mozilla.org/?product=firefox-5.0.1&os=win&lang=en-GB', },
    'mac' => { url: 'http://download.mozilla.org/?product=firefox-5.0.1&os=osx&lang=en-GB', },
    'linux' => { url: 'http://download.mozilla.org/?product=firefox-5.0.1&os=linux&lang=en-GB', },
  },
  'wireshark' => {
    'mac' => { url: 'http://wiresharkdownloads.riverbed.com/wireshark/osx/Wireshark%201.10.3%20Intel%2064.dmg', },
    'win' => { url: 'http://wiresharkdownloads.riverbed.com/wireshark/win32/Wireshark-win32-1.10.3.exe', },
    'source' => { url: 'http://wiresharkdownloads.riverbed.com/wireshark/src/wireshark-1.10.3.tar.bz2', },
  },
  'firebug' => {
    'xpi' => { url: 'http://getfirebug.com/releases/firebug/1.8/firebug-1.8.0.xpi', },
  },
  'live-http-headers' => {
    'xpi' => { url: 'https://addons.mozilla.org/firefox/downloads/latest/3829/addon-3829-latest.xpi?src=addondetail', },
  },
  'fiddler' => {
    'win' => { url: 'http://www.getfiddler.com/dl/Fiddler2Setup.exe', },
    'script-editor' => { url: 'http://www.fiddler2.com/redir/?id=SYNTAXVIEWINSTALL', },
  },
  'ipython' => {
    'win' => { url: 'http://archive.ipython.org/release/0.11/ipython-0.11.win32-setup.exe', },
  },
  'geoip' => {
    'country-bin' => { url: 'http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz', },
    'country-csv' => { url: 'http://geolite.maxmind.com/download/geoip/database/GeoIPCountryCSV.zip', },
    'city-bin' => { url: 'http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz', },
    'city-csv' => { url: 'http://geolite.maxmind.com/download/geoip/database/GeoLiteCity_CSV/GeoLiteCity_20091101.zip', },
    'python' => { url: 'http://geolite.maxmind.com/download/geoip/api/python/GeoIP-Python-1.2.4.tar.gz', },
    'ruby' => { url: 'http://geolite.maxmind.com/download/geoip/api/ruby/net-geoip-0.06.tar.gz', },
    'perl' => { url: 'http://geolite.maxmind.com/download/geoip/api/perl/Geo-IP-1.38.tar.gz', },
    'pure-perl' => { url: 'http://geolite.maxmind.com/download/geoip/api/pureperl/Geo-IP-PurePerl-1.24.tar.gz', },
    'pure-php' => { url: 'http://geolite.maxmind.com/download/geoip/api/php/geoip.inc', },
    'pure-php-city' => { url: 'http://geolite.maxmind.com/download/geoip/api/php/geoipcity.inc', },
    'pure-php-regionvars' => { url: 'http://geolite.maxmind.com/download/geoip/api/php/geoipregionvars.php', },
    'c-source' => { url: 'http://geolite.maxmind.com/download/geoip/api/c/GeoIP.tar.gz', },
  },
  'geonames' => {
    'all-countries' => { url: 'http://download.geonames.org/export/dump/allCountries.zip', },
    'cities-1000' => { url: 'http://download.geonames.org/export/dump/cities1000.zip', },
    'alternate-names' => { url: 'http://download.geonames.org/export/dump/alternateNames.zip', },
    'language-codes' => { url: 'http://download.geonames.org/export/dump/iso-languagecodes.txt', },
    'timezones' => { url: 'http://download.geonames.org/export/dump/timeZones.txt', },
    'country-info' => { url: 'http://download.geonames.org/export/dump/countryInfo.txt', },
  },
  'freebase' => {
    'tsv' => { url: 'http://download.freebase.com/datadumps/latest/freebase-datadump-tsv.tar.bz2', },
    'link-export' => { url: 'http://download.freebase.com/datadumps/latest/freebase-datadump-quadruples.tsv.bz2', },
  },
  'emacs' => {
    'win' => { url: 'http://ftp.gnu.org/gnu/emacs/windows/emacs-24.3-bin-i386.zip', },
    'mac' => { url: 'http://emacsformacosx.com/emacs-builds/Emacs-24.3-universal-10.6.8.dmg', },
  },
  'aquamacs' => {
    'mac' => { url: 'http://downloads.sourceforge.net/project/aquamacs/Releases/Aquamacs-Emacs-2.3a2.dmg?r=http%3A%2F%2Faquamacs.org%2Fdownload-release.shtml&ts=1312740751&use_mirror=garr', },
  },
  'macvim' => {
    'mac' => { url: 'http://github.com/downloads/b4winckler/macvim/MacVim-7_3-53.tbz', },
    'snapshot' => { url: 'https://github.com/downloads/b4winckler/macvim/MacVim-snapshot-61.tbz', },
  },
  'versions' => {
    'mac' => { url: 'http://versionsapp.com/redirect/versionslatest', },
  },
  'google-refine' => {
    'mac' => { url: 'http://google-refine.googlecode.com/files/google-refine-2.1-r2136.dmg', },
    'win' => { url: 'http://google-refine.googlecode.com/files/google-refine-2.1-r2136.zip', },
    'linux' => { url: 'http://google-refine.googlecode.com/files/google-refine-2.1-r2136.tar.gz', },
  },
  
  'vagrant' => {
    'mac' => { url: 'http://files.vagrantup.com/packages/a40522f5fabccb9ddabad03d836e120ff5d14093/Vagrant-1.3.5.dmg', },
    'win' => { url: 'http://files.vagrantup.com/packages/a40522f5fabccb9ddabad03d836e120ff5d14093/Vagrant_1.3.5.msi', },
    'deb_i686' => { url: 'http://files.vagrantup.com/packages/a40522f5fabccb9ddabad03d836e120ff5d14093/vagrant_1.3.5_i686.deb', },
    'deb_x86_64' => { url: 'http://files.vagrantup.com/packages/a40522f5fabccb9ddabad03d836e120ff5d14093/vagrant_1.3.5_x86_64.deb', },
  },
  'virtualbox' => {
    'mac' => { url: 'http://download.virtualbox.org/virtualbox/4.3.2/VirtualBox-4.3.2-90405-OSX.dmg', },
    'win' => { url: 'http://download.virtualbox.org/virtualbox/4.3.2/VirtualBox-4.3.2-90405-Win.exe', },
    'deb_i386' => { url: 'http://download.virtualbox.org/virtualbox/4.3.2/virtualbox-4.3_4.3.2-90405~Ubuntu~raring_i386.deb', },
    'deb_amd64' => { url: 'http://download.virtualbox.org/virtualbox/4.3.2/virtualbox-4.3_4.3.2-90405~Ubuntu~raring_amd64.deb', },
  },
  'xowa' => {
    'mac' => { url: 'http://sourceforge.net/projects/xowa/files/v0.11.0/xowa_app_macosx_v0.11.0.0.zip/download', },
    'win' => { url: 'http://sourceforge.net/projects/xowa/files/v0.11.0/xowa_app_windows_v0.11.0.0.zip/download', },
    'linux' => { url: 'http://sourceforge.net/projects/xowa/files/v0.11.0/xowa_app_linux_v0.11.0.0.zip/download', },
    'linux_64' => { url: 'http://sourceforge.net/projects/xowa/files/v0.11.0/xowa_app_linux_64_v0.11.0.0.zip/download', },
  },
  
  'android' => {
    # SDK, Eclipse with devtools, etc.
    'win' => { url: 'http://dl.google.com/android/adt/adt-bundle-windows-x86-20131030.zip', },
    'mac' => { url: 'http://dl.google.com/android/adt/adt-bundle-mac-x86_64-20131030.zip', },
    'linux' => { url: 'http://dl.google.com/android/adt/adt-bundle-linux-x86-20131030.zip', },
    'linux_64' => { url: 'http://dl.google.com/android/adt/adt-bundle-linux-x86_64-20131030.zip', }
  },
  'vmware' => {
    'win' => { url: 'https://download3.vmware.com/software/player/file/VMware-player-6.0.1-1379776.exe', },
    'mac' => { url: 'https://download3.vmware.com/software/fusion/file/VMware-Fusion-6.0.2-1398658-light.dmg', },
    'linux' => { url: 'https://download3.vmware.com/software/player/file/VMware-Player-6.0.1-1379776.i386.bundle', },
    'linux_64' => { url: 'https://download3.vmware.com/software/player/file/VMware-Player-6.0.1-1379776.x86_64.bundle', }
   },
  'xcode' => {
    'mac' => {
      url: 'http://adcdownload.apple.com/Developer_Tools/xcode_5.0.2/xcode_5.0.2.dmg',
      require: {
        args: <<-REQUIRED_ARGS
This is not provided because it requires the cookie for an Apple Developer Center account.

The value must be set as follows:
    --header='Cookie: ADCDownloadAuth=<adcdownloadauth-cookie-value>'
REQUIRED_ARGS
      },
    },
  },
}
