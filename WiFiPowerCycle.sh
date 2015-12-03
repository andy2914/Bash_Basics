airport=`/usr/sbin/networksetup -listallhardwareports | /usr/bin/awk '/Wi-Fi|AirPort/ {getline; print $NF}'`
    /usr/sbin/networksetup -setairportpower $airport off
    echo "power to $airport is off."
