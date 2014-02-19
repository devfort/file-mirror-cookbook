default['file_mirror']['user'] = 'fort'
default['file_mirror']['data_dir'] = '/data/files'
default['file_mirror']['apache']['listen_hostname'] = 'files.fort'
default['file_mirror']['apache']['listen_port'] = '80'

default['file_mirror']['command'] = 'wget -N --no-check-certificate %{args} %{url}'

default['file_mirror']['files'] = {
  'linux-kernel' => {
    'source' => { url: 'http://www.kernel.org/pub/linux/kernel/v3.x/linux-3.13.3.tar.xz', },
  },
  'erlang' => {
    'source' => { url: 'http://www.erlang.org/download/otp_src_R16B03-1.tar.gz', },
    'win' => { url: 'http://www.erlang.org/download/otp_win32_R16B03-1.exe', },
    'docs' => { url: 'http://www.erlang.org/download/otp_doc_html_R16B03-1.tar.gz', },
  },
  'apache-httpd' => {
    'source' => { url: 'http://apache.mirrors.timporter.net//httpd/httpd-2.4.7.tar.bz2', },
    'win' => { url:
 'http://mirrors.enquira.co.uk/apache//httpd/binaries/win32/httpd-2.2.19-win32-x86-openssl-0.9.8r.msi', },
},
  },
  'jquery' => {
    'uncompressed' => { url: 'http://code.jquery.com/jquery-1.11.0.js', },
    'minified' => { url: 'http://code.jquery.com/jquery-1.11.0.min.js', },
    'map': => { url: 'http://code.jquery.com/jquery-1.11.0.min.map', },
    'ui' => { url: 'http://jqueryui.com/resources/download/jquery-ui-1.10.4.zip', },
    '1.9-upgrade-guide' => { url: 'http://jquery.com/upgrade-guide/1.9/', },
  },
  'llvm' => {
    'source' => { url: 'http://llvm.org/releases/3.4/llvm-3.4.src.tar.gz', },
    'clang-source' => { url: 'http://llvm.org/releases/3.4/clang-3.4.src.tar.gz', },
  },
  'varnish2' => {
    'source' => { url: 'http://repo.varnish-cache.org/source/varnish-2.1.5.tar.gz', },
  },
  'varnish3' => {
    'source' => { url: 'http://repo.varnish-cache.org/source/varnish-3.0.5.tar.gz', },
  },
  'varnish4' => {
    'source' => { url: 'http://repo.varnish-cache.org/source/varnish-4.0.0-tp2.tar.gz', },
  },
  'xapian' => {
    'core' => { url: 'http://oligarchy.co.uk/xapian/1.2.17/xapian-core-1.2.17.tar.xz', },
    'bindings' => { url: 'http://oligarchy.co.uk/xapian/1.2.17/xapian-bindings-1.2.17.tar.xz', },
    'omega' => { url: 'http://oligarchy.co.uk/xapian/1.2.17/xapian-omega-1.2.17.tar.xz', },
    'XapianSearch' => { url: 'http://oligarchy.co.uk/xapian/1.2.17/Search-Xapian-1.2.17.0.tar.gz', },
    'wiki' => { url: 'http://oligarchy.co.uk/xapian/trac.xapian.org.tar.gz', },
  },
  'diveintopython' => {
    'pdf' => 'http://diveintopython.net/download/diveintopython-pdf-5.4.zip',
  },
  'diveintopython3' => {
    'pdf' => 'http://cloud.github.com/downloads/diveintomark/diveintopython3/dive-into-python3.pdf',
  },
  'adobe-flash-player' => {
    'win' => { url: 'http://fpdownload.adobe.com/get/flashplayer/current/install_flash_player_ax.exe', },
    'win-non-ie' => { url: 'http://fpdownload.adobe.com/get/flashplayer/current/install_flash_player.exe', },
    'mac' => { url: 'http://fpdownload.macromedia.com/get/flashplayer/current/install_flash_player_osx_ub.dmg', },
    'linux' => { url: 'http://fpdownload.macromedia.com/get/flashplayer/current/install_flash_player_10_linux.tar.gz', },
  },
  'firefox' => {
    'win' => { url: 'http://download.mozilla.org/?product=firefox-27.0.1-SSL&os=win&lang=en-GB', },
    'mac' => { url: 'http://download.mozilla.org/?product=firefox-27.0.1-SSL&os=osx&lang=en-GB', },
    'linux' => { url: 'http://download.mozilla.org/?product=firefox-27.0.1-SSL&os=linux&lang=en-GB', },
  },
  'wireshark' => {
    'mac' => { url: 'https://1.eu.dl.wireshark.org/osx/Wireshark%201.10.5%20Intel%2064.dmg', },
    'win' => { url: 'https://1.eu.dl.wireshark.org/win32/Wireshark-win32-1.10.5.exe', },
    'win64' => { url: 'https://1.eu.dl.wireshark.org/win64/Wireshark-win64-1.10.5.exe', },
    'source' => { url: 'https://1.eu.dl.wireshark.org/src/wireshark-1.10.5.tar.bz2', },
  },
  'firebug' => {
    'xpi' => { url: 'https://addons.mozilla.org/firefox/downloads/latest/1843/addon-1843-latest.xpi?src=dp-btn-primary', },
  },
  'live-http-headers' => {
    'xpi' => { url: 'http://downloads.mozdev.org/livehttpheaders/livehttpheaders-0.17.xpi', },
  },
  'fiddler' => {
    'win-net4' => { url: 'http://www.telerik.com/docs/default-source/fiddler/fiddler4setup.exe?sfvrsn=2', },
    'win-net2' => { url: 'http://www.telerik.com/docs/default-source/fiddler/fiddler2setup.exe?sfvrsn=2', },
    'script-editor' => { url: 'http://www.telerik.com/docs/default-source/fiddler/addons/fiddlersyntaxsetup.exe?sfvrsn=2', },
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
  'macvim' => {
    'mac' => { url: 'http://github.com/downloads/b4winckler/macvim/MacVim-7_3-53.tbz', },
    'snapshot' => { url: 'https://github.com/downloads/b4winckler/macvim/MacVim-snapshot-61.tbz', },
  },
  'versions' => {
    'mac' => { url: 'http://versionsapp.com/redirect/versionslatest', },
  },
  'google-refine' => {
    'mac' => { url: 'https://github.com/OpenRefine/OpenRefine/releases/download/2.5/google-refine-2.5-r2407.dmg', },
    'win' => { url: 'https://github.com/OpenRefine/OpenRefine/releases/download/2.5/google-refine-2.5-r2407.zip', },
    'linux' => { url: 'https://github.com/OpenRefine/OpenRefine/releases/download/2.5/google-refine-2.5-r2407.tar.gz', },
  },
  
  'vagrant' => {
    'mac' => { url: 'https://dl.bintray.com/mitchellh/vagrant/Vagrant-1.4.3.dmg', },
    'win' => { url: 'https://dl.bintray.com/mitchellh/vagrant/Vagrant_1.4.3.msi', },
    'deb_x86_64' => { url: 'https://dl.bintray.com/mitchellh/vagrant/vagrant_1.4.3_x86_64.deb', },
  },
  'virtualbox' => {
    'mac' => { url: 'http://download.virtualbox.org/virtualbox/4.3.6/VirtualBox-4.3.6-91406-OSX.dmg', },
    'win' => { url: 'http://download.virtualbox.org/virtualbox/4.3.6/VirtualBox-4.3.6-91406-Win.exe', },
    'deb_amd64' => { url: 'http://download.virtualbox.org/virtualbox/4.3.6/virtualbox-4.3_4.3.6-91406~Ubuntu~raring_amd64.deb', },
  },
  
  'android' => {
    # SDK, Eclipse with devtools, etc.
    'win' => { url: 'http://dl.google.com/android/adt/adt-bundle-windows-x86_64-20131030.zip', },
    'mac' => { url: 'http://dl.google.com/android/adt/adt-bundle-mac-x86_64-20131030.zip', },
    'linux_64' => { url: 'http://dl.google.com/android/adt/adt-bundle-linux-x86_64-20131030.zip', }
  },
  'vmware' => {
    'win' => { url: 'http://www.vmware.com/go/downloadplayer', },
    'mac' => { url: 'http://www.vmware.com/go/tryfusion', },
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
  'boxes' => {
    'ubuntu-13.04-provisionerless-virtualbox'       => { url: 'http://devfort.s3.amazonaws.com/boxes/devfort-ubuntu-13.04-provisionerless-virtualbox.box', },
    'ubuntu-13.04-provisionerless-120gb-virtualbox' => { url: 'http://devfort.s3.amazonaws.com/boxes/devfort-ubuntu-13.04-provisionerless-120gb-virtualbox.box', },
    'ubuntu-13.04-provisionerless-vmware'           => { url: 'http://devfort.s3.amazonaws.com/boxes/devfort-ubuntu-13.04-provisionerless-vmware.box', },
    'ubuntu-13.04-provisionerless-120gb-vmware'     => { url: 'http://devfort.s3.amazonaws.com/boxes/devfort-ubuntu-13.04-provisionerless-120gb-vmware.box', },
  },
  'chef' => {
    '11.10.0-1_i386'   => { url: 'https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/13.04/i686/chef_11.10.0-1.ubuntu.13.04_i386.deb', },
    '11.8.2-1_i386'    => { url: 'https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/13.04/i686/chef_11.8.2-1.ubuntu.13.04_i386.deb', },
    '11.10.0-1_x86_64' => { url: 'https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/13.04/x86_64/chef_11.10.0-1.ubuntu.13.04_amd64.deb', },
    '11.8.2-1_x86_64'  => { url: 'https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/13.04/x86_64/chef_11.8.2-1.ubuntu.13.04_amd64.deb', },
  },
}
