#!/bin/bash
echo ""
echo "1 = Passar um site para testar o CMS"
echo "2 = Passar uma lista de sites para testar o CMS"
echo ""

read -n2 -p 'Opção: ' OPCAO
echo ""

case $OPCAO in

1) #site
echo -n "Passe o site examplo.com-->: ";read site
python3 cmseek.py -u $site --random-agent 
;;

2) #lista de site
echo -n "passe a lista de sites.txt-->: ";read lista
tr '\n' ',' $lista > cmslista.txt ; python3 cmseek.py -l cmlista.txt --batch -r; rm cmlista.txt
;;

*)

echo "Numero incorreto"
;;

esac
