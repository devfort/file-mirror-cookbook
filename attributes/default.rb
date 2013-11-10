default['file_mirror']['user'] = 'fort'
default['file_mirror']['data_dir'] = '/data/files'
default['file_mirror']['apache']['listen_hostname'] = 'files.fort'
default['file_mirror']['apache']['listen_port'] = '80'

default['file_mirror']['command'] = 'wget -N --no-check-certificate %{url}'

default['file_mirror']['files'] = {
  'linux-kernel' => {
    'source' => 'http://www.kernel.org/pub/linux/kernel/v3.0/linux-3.0.1.tar.bz2',
  },
  'minix' => {
    'image' => 'http://www.minix3.org/download/minix3_2_0_usb_20110722_1e56737131.img.bz2'
  },
  'django' => {
    'source' => 'http://www.djangoproject.com/download/1.3/tarball/',
  },
  'espeak' => {
    'mac' => 'http://kent.dl.sourceforge.net/sourceforge/espeak/espeak-1.45.04-OSX.zip',
    'source' => 'http://kent.dl.sourceforge.net/sourceforge/espeak/espeak-1.45.04-source.zip',
    'win' => 'http://kent.dl.sourceforge.net/sourceforge/espeak/espeak-1.45.04-win.zip',
  },
  'erlang' => {
    'source' => 'http://www.erlang.org/download/otp_src_R14B03.tar.gz',
    'win' => 'http://www.erlang.org/download/otp_win32_R14B03.exe',
    'docs' => 'http://www.erlang.org/download/otp_doc_html_R14B03.tar.gz',
  },
  'apache-httpd' => {
    'source' => 'http://mirror.fubra.com/ftp.apache.org/httpd/httpd-2.2.19.tar.bz2',
    'win' => 'http://mirrors.enquira.co.uk/apache//httpd/binaries/win32/httpd-2.2.19-win32-x86-openssl-0.9.8r.msi',
    'dev-source' => 'http://mirrors.enquira.co.uk/apache//httpd/httpd-2.3.12-beta-deps.tar.bz2',
    'dev-deps' => 'http://mirrors.enquira.co.uk/apache//httpd/httpd-2.3.12-beta.tar.bz2',
  },
  'jquery' => {
    'uncompressed' => 'http://code.jquery.com/jquery-1.6.2.js',
    'minified' => 'http://code.jquery.com/jquery-1.6.2.min.js',
    'apiref' => 'http://view.jquery.com/trunk/tools/api-browser/jquery-api-browser.zip',
    'ui' => 'http://jqueryui.com/download/jquery-ui-1.8.14.custom.zip',
  },
  'llvm' => {
    'source' => 'http://llvm.org/releases/2.9/llvm-2.9.tgz',
    'clang' => 'http://llvm.org/releases/2.9/clang-2.9.tgz',
    'clang-mac' => 'http://llvm.org/releases/2.9/clang+llvm-2.9-x86_64-apple-darwin10.tar.gz',
    'gcc4' => 'http://llvm.org/releases/2.9/llvm-gcc-4.2-2.9.source.tgz',
    'gcc4-mac' => 'http://llvm.org/releases/2.9/llvm-gcc-4.2-2.9-x86_64-apple-darwin10.tar.gz',
  },
  'nginx' => {
    'source' => 'http://nginx.org/download/nginx-1.0.5.tar.gz',
    'win' => 'http://nginx.org/download/nginx-1.0.5.zip',
  },
  'python2' => {
    'source' => 'http://www.python.org/ftp/python/2.7.2/Python-2.7.2.tar.bz2',
    'win32' => 'http://www.python.org/ftp/python/2.7.2/python-2.7.2.msi',
    'win' => 'http://www.python.org/ftp/python/2.7.2/python-2.7.2.amd64.msi',
    'mac' => 'http://www.python.org/ftp/python/2.7.2/python-2.7.2-macosx10.6.dmg',
    'mac32' => 'http://www.python.org/ftp/python/2.7.2/python-2.7.2-macosx10.3.dmg',
  },
  'python3' => {
    'source' => 'http://www.python.org/ftp/python/3.2.1/Python-3.2.1.tar.bz2',
    'win32' => 'http://www.python.org/ftp/python/3.2.1/python-3.2.1.msi',
    'win' => 'http://www.python.org/ftp/python/3.2.1/python-3.2.1.amd64.msi',
    'mac' => 'http://www.python.org/ftp/python/3.2.1/python-3.2.1-macosx10.6.dmg',
    'mac32' => 'http://www.python.org/ftp/python/3.2.1/python-3.2.1-macosx10.3.dmg',
  },
  'ruby1.9' => {
    'source' => 'http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.2-p290.tar.gz',
    'win' => 'http://rubyforge.org/frs/download.php/75127/rubyinstaller-1.9.2-p290.exe',
  },
  'twisted' => {
    'source' => 'http://pypi.python.org/packages/source/T/Twisted/Twisted-11.0.0.tar.bz2#md5=d7f94a1609a1b8f3b8c8d0146d4cfe54',
    'win-python2.5' => 'http://pypi.python.org/packages/2.5/T/Twisted/Twisted-11.0.0.winxp32-py2.5.msi#md5=bef10a63f64301539658c48fe52b37e8',
    'win-python2.6' => 'http://pypi.python.org/packages/2.6/T/Twisted/Twisted-11.0.0.winxp32-py2.6.msi#md5=b3f1f194c9256c5e9ce362d0cf2a6036',
    'win-python2.7' => 'http://pypi.python.org/packages/2.7/T/Twisted/Twisted-11.0.0.winxp32-py2.7.msi#md5=edc63d41222fdb9ef4545ee33931eca0',
  },
  'varnish2' => {
    'source' => 'http://repo.varnish-cache.org/source/varnish-2.1.5.tar.gz',
  },
  'varnish3' => {
    'source' => 'http://repo.varnish-cache.org/source/varnish-3.0.0.tar.gz',
  },
  'xapian' => {
    'core' => 'http://oligarchy.co.uk/xapian/1.2.6/xapian-core-1.2.6.tar.gz',
    'bindings' => 'http://oligarchy.co.uk/xapian/1.2.6/xapian-bindings-1.2.6.tar.gz',
    'omega' => 'http://oligarchy.co.uk/xapian/1.2.6/xapian-omega-1.2.6.tar.gz',
    'XapianSearch' => 'http://oligarchy.co.uk/xapian/1.2.6/Search-Xapian-1.2.6.0.tar.gz',
    'wiki' => 'http://oligarchy.co.uk/xapian/trac.xapian.org.tar.gz',
  },
  'tokyo-cabinet' => {
    'source' => 'http://fallabs.com/tokyocabinet/tokyocabinet-1.4.47.tar.gz',
  },
  'tokyo-tyrant' => {
    'source' => 'http://fallabs.com/tokyotyrant/tokyotyrant-1.1.41.tar.gz',
  },
  'tokyo-dystopia' => {
    'source' => 'http://fallabs.com/tokyodystopia/tokyodystopia-0.9.15.tar.gz',
  },
  'tokyo-promenade' => {
    'source' => 'http://fallabs.com/tokyopromenade/tokyopromenade-0.9.22.tar.gz',
  },
  'kyoto-cabinet' => {
    'source' => 'http://fallabs.com/kyotocabinet/pkg/kyotocabinet-1.2.70.tar.gz',
    'python2' => 'http://fallabs.com/kyotocabinet/pythonlegacypkg/kyotocabinet-python-legacy-1.16.tar.gz',
    'python3' => 'http://fallabs.com/kyotocabinet/pythonpkg/kyotocabinet-python-1.20.tar.gz',
    'ruby' => 'http://fallabs.com/kyotocabinet/rubypkg/kyotocabinet-ruby-1.27.tar.gz',
  },
  'diveintopython' => {
    'pdf' => 'http://diveintopython.org/download/diveintopython-pdf-5.4.zip',
  },
  'diveintopython3' => {
    'pdf' => 'http://diveintopython3.org/d/diveintopython3-pdf-latest.zip',
  },
  'rabbitmq' => {
    'source' => 'http://www.rabbitmq.com/releases/rabbitmq-server/v2.5.1/rabbitmq-server-2.5.1.tar.gz',
    'win' => 'http://www.rabbitmq.com/releases/rabbitmq-server/v2.5.1/rabbitmq-server-2.5.1.exe',
    'deb' => 'http://www.rabbitmq.com/releases/rabbitmq-server/v2.5.1/rabbitmq-server_2.5.1-1_all.deb',
  },
  'mongodb' => {
    'mac' => 'http://fastdl.mongodb.org/osx/mongodb-osx-i386-1.8.2.tgz',
    'mac64' => 'http://fastdl.mongodb.org/osx/mongodb-osx-x86_64-1.8.2.tgz',
    'win' => 'http://downloads.mongodb.org/win32/mongodb-win32-i386-1.8.2.zip',
    'source' => 'http://downloads.mongodb.org/src/mongodb-src-r1.8.2.tar.gz',
  },
  'thrift' => {
    'source' => 'http://www.apache.org/dyn/closer.cgi?path=/thrift/0.6.1/thrift-0.6.1.tar.gz',
  },
  'hypertable' => {
    'source' => 'http://hypertable.org/download.php?v=0.9.5.0',
  },
  'adobe-flash-player' => {
    'win' => 'http://fpdownload.adobe.com/get/flashplayer/current/install_flash_player_ax.exe',
    'win-non-ie' => 'http://fpdownload.adobe.com/get/flashplayer/current/install_flash_player.exe',
    'mac' => 'http://fpdownload.macromedia.com/get/flashplayer/current/install_flash_player_osx_ub.dmg',
    'linux' => 'http://fpdownload.macromedia.com/get/flashplayer/current/install_flash_player_10_linux.tar.gz',
  },
  'firefox' => {
    'win' => 'http://download.mozilla.org/?product=firefox-5.0.1&os=win&lang=en-GB',
    'mac' => 'http://download.mozilla.org/?product=firefox-5.0.1&os=osx&lang=en-GB',
    'linux' => 'http://download.mozilla.org/?product=firefox-5.0.1&os=linux&lang=en-GB',
  },
  'wireshark' => {
    'mac' => 'http://wiresharkdownloads.riverbed.com/wireshark/osx/Wireshark%201.6.1%20Intel%2064.dmg',
    'win' => 'http://wiresharkdownloads.riverbed.com/wireshark/win32/wireshark-win32-1.6.1.exe',
    'source' => 'http://wiresharkdownloads.riverbed.com/wireshark/src/wireshark-1.6.1.tar.bz2',
  },
  'firebug' => {
    'xpi' => 'http://getfirebug.com/releases/firebug/1.8/firebug-1.8.0.xpi',
  },
  'live-http-headers' => {
    'xpi' => 'https://addons.mozilla.org/firefox/downloads/latest/3829/addon-3829-latest.xpi?src=addondetail',
  },
  'fiddler' => {
    'win' => 'http://www.getfiddler.com/dl/Fiddler2Setup.exe',
    'script-editor' => 'http://www.fiddler2.com/redir/?id=SYNTAXVIEWINSTALL',
  },
  'ipython' => {
    'win' => 'http://archive.ipython.org/release/0.11/ipython-0.11.win32-setup.exe',
  },
  'geoip' => {
    'country-bin' => 'http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz',
    'country-csv' => 'http://geolite.maxmind.com/download/geoip/database/GeoIPCountryCSV.zip',
    'city-bin' => 'http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz',
    'city-csv' => 'http://geolite.maxmind.com/download/geoip/database/GeoLiteCity_CSV/GeoLiteCity_20091101.zip',
    'python' => 'http://geolite.maxmind.com/download/geoip/api/python/GeoIP-Python-1.2.4.tar.gz',
    'ruby' => 'http://geolite.maxmind.com/download/geoip/api/ruby/net-geoip-0.06.tar.gz',
    'perl' => 'http://geolite.maxmind.com/download/geoip/api/perl/Geo-IP-1.38.tar.gz',
    'pure-perl' => 'http://geolite.maxmind.com/download/geoip/api/pureperl/Geo-IP-PurePerl-1.24.tar.gz',
    'pure-php' => 'http://geolite.maxmind.com/download/geoip/api/php/geoip.inc',
    'pure-php-city' => 'http://geolite.maxmind.com/download/geoip/api/php/geoipcity.inc',
    'pure-php-regionvars' => 'http://geolite.maxmind.com/download/geoip/api/php/geoipregionvars.php',
    'c-source' => 'http://geolite.maxmind.com/download/geoip/api/c/GeoIP.tar.gz',
  },
  'geonames' => {
    'all-countries' => 'http://download.geonames.org/export/dump/allCountries.zip',
    'cities-1000' => 'http://download.geonames.org/export/dump/cities1000.zip',
    'alternate-names' => 'http://download.geonames.org/export/dump/alternateNames.zip',
    'language-codes' => 'http://download.geonames.org/export/dump/iso-languagecodes.txt',
    'timezones' => 'http://download.geonames.org/export/dump/timeZones.txt',
    'country-info' => 'http://download.geonames.org/export/dump/countryInfo.txt',
  },
  'freebase' => {
    'tsv' => 'http://download.freebase.com/datadumps/latest/freebase-datadump-tsv.tar.bz2',
    'link-export' => 'http://download.freebase.com/datadumps/latest/freebase-datadump-quadruples.tsv.bz2',
  },
  'emacs' => {
    'win' => 'http://ftp.gnu.org/gnu/emacs/windows/emacs-23.3-bin-i386.zip',
    'mac' => 'http://emacsformacosx.com/emacs-builds/Emacs-23.3-universal-10.6.6.dmg',
  },
  'aquamacs' => {
    'mac' => 'http://downloads.sourceforge.net/project/aquamacs/Releases/Aquamacs-Emacs-2.3a2.dmg?r=http%3A%2F%2Faquamacs.org%2Fdownload-release.shtml&ts=1312740751&use_mirror=garr',
  },
  'macvim' => {
    'mac' => 'http://github.com/downloads/b4winckler/macvim/MacVim-7_3-53.tbz',
    'snapshot' => 'https://github.com/downloads/b4winckler/macvim/MacVim-snapshot-61.tbz',
  },
  'versions' => {
    'mac' => 'http://versionsapp.com/redirect/versionslatest',
  },
  'google-refine' => {
    'mac' => 'http://google-refine.googlecode.com/files/google-refine-2.1-r2136.dmg',
    'win' => 'http://google-refine.googlecode.com/files/google-refine-2.1-r2136.zip',
    'linux' => 'http://google-refine.googlecode.com/files/google-refine-2.1-r2136.tar.gz',
  },
}
