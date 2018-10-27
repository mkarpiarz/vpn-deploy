FILES="/etc/openvpn/keys/ca.crt /etc/openvpn/keys/client.crt /etc/openvpn/keys/client.key /etc/openvpn/keys/client.ovpn"
for file in $FILES
do
    rsync -av --progress -e "ssh" --rsync-path="sudo rsync" ubuntu@185.93.31.71:${file} ~/vScaler/VPN/
done
