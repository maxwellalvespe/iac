#!/bin/bash

echo "Step one:"
echo "Realicando cadastro dos diretórios..."
mkdir publico
mkdir adm
mkdir ven
mkdir sec

echo "Step two:"
echo "Realizando cadastro dos grupods de Usuários.."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SUP
   

echo "Step three:"
echo "Cadastrando novos usuários, Obs:: todos os usuários devem trocar a senha no primeiro login"
useradd carlos -m -c 'carlos.adm' -s /bin/bash  -p ${openssl passwd -crypt 123} -e -GRP_ADM
useradd maria -m -c 'maria.adm' -s /bin/bash  -p ${openssl passwd -crypt 123} -e -GRP_ADM
useradd joao -m -c 'joao.adm' -s /bin/bash  -p ${openssl passwd -crypt -crypt 123} -e -GRP_ADM

useradd debora -m -c 'debora.vendas' -s /bin/bash  -p ${openssl passwd -crypt 123} -e -GRP_VEN
useradd sebastiana -m -c 'sebastiana.vendas' -s /bin/bash  -p ${openssl passwd -crypt 123} -e -GRP_VEN
useradd roberto -m -c 'roberto.vendas' -s /bin/bash  -p ${openssl passwd -crypt 123} -e -GRP_VEN

useradd josefina -m -c 'josefina.sup' -s /bin/bash  -p ${openssl passwd -crypt 123} -e -GRP_SUP
useradd amanda -m -c 'amanda.sup' -s /bin/bash  -p ${openssl passwd -crypt 123} -e -GRP_SUP
useradd rogerio -m -c 'rogerio.sup' -s /bin/bash  -p ${openssl passwd -crypt 123} -e -GRP_SUP

echo "Step four"

chown root:GRP_ADM adm
chown root:GRP_VEN ven
chown root:GRP_SUP sup


chmod 770 adm
chmod 770 ven
chmod 770 sec
chmod 777 publico