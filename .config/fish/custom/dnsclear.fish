function dnsclear
    sudo dscacheutil -flushcache
    sudo killall -HUP mDNSResponder
end
