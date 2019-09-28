#changes firewall settings 

#to use this copy my firewall scripts to etc dicratory
echo *******worning this program only runs on root prevladge******
echo chose the the type of iptables rules u want to use

echo 1.normal 
echo 2.local unblocked
#echo 3.iptables reset
read x; 

if [ $x -eq 1    ]
then
iptables-restore < /etc/iptables-new
ip6tables-restore  < /etc/ip6tables-new
fi
if [ $x -eq 2 ]
then
iptables-restore < /etc/iptables-lo
ip6tables-restore < /etc/ip6tables-lo
fi
#if [ $x -eq 3 ]
#then
#   iptables -P INPUT ACCEPT
#   iptables -P OUTPUT ACCEPT
#   iptables -P FORWARD ACCEPT
#   iptables -F INPUT
#   iptables -F OUTPUT
#   iptables -F FORWARD 
#   ip6tables -F
#   ip6tables -P INPUT ACCEPT
#   ip6tables -P OUTPUT ACCEPT
#   ip6tables -P FORWARD ACCEPT
#   ip6tables -F INPUT
#   ip6tables -F OUTPUT
#   ip6tables -F FORWARD 
#   ip6tables -F
#fi
