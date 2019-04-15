cd /v2ray

# Version set
if [ -z "$VER" ]; then
    export VER="$(wget -O- 'https://github.com/v2ray/v2ray-core/releases/latest' | grep title=\"v | grep \"\> |  awk '/[^[:graph:]]title=/{print $NF}'  | awk '{split($0,a,"\""); print a[2]}' | awk 'NR==1{print $1}' | awk '{split($0,a,"v"); print a[2]}')";
    echo "Version not provided, using latest version: $VER";
else
    echo "Version provided, using $VER as current version";
fi

wget -O v2ray.zip http://github.com/v2ray/v2ray-core/releases/download/v$VER/v2ray-linux-64.zip
unzip v2ray.zip 
if [ ! -f "v2ray" ]; then
  mv /v2ray/v2ray-v$VER-linux-64/v2ray .
  mv /v2ray/v2ray-v$VER-linux-64/v2ctl .
  mv /v2ray/v2ray-v$VER-linux-64/geoip.dat .
  mv /v2ray/v2ray-v$VER-linux-64/geosite.dat .
fi

chmod +x v2ray v2ctl
./v2ray -config=/etc/v2ray/config.json
