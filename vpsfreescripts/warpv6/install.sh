echo "======================================================"
echo ""
echo "When script starts connecting to warp please do Ctrl+C"
echo "and then connect again"
echo ""
echo "======================================================"

wget -N https://raw.githubusercontent.com/fscarmen/warp/main/menu.sh && bash menu.sh

echo "Endpoint = [2001:67c:2b0:db32:0:1:a29f:c001]:2408" > /etc/wireguard/wgcf.conf
