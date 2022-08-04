#!/bin/bash

echo "DIRECTORIES"

mkdir /public /admin /sales /atten

echo "GROUPS"

groupadd GRP_ADMIN
groupadd GRP_SALES
groupadd GRP_ATTEN

echo "USERS"

useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_ADMIN
passwd carlos -e

useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_ADMIN
passwd maria -e

useradd john -c "John" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_ADMIN
passwd john -e

useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_SALES
passwd debora -e

useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_SALES
passwd sebastiana -e

useradd robert -c "Robert" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_SALES
passwd robert -e

useradd josephina -c "Josephina" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_ATTEN
passwd josephina -e

useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_ATTEN
passwd amanda -e

useradd roger -c "Roger" -s /bin/bash -m -p $(openssl passwd -6 Senha123) -G GRP_ATTEN
passwd roger -e

echo "CHANGING DIRECTORY GROUPS"

chown root:GRP_ADMIN /admin/
chown root:GRP_SALES /sales/
chown root:GRP_ATTEN /atten/

echo "CHANGING PERMISSIONS"

chmod 777 /public/
chmod 770 /admin/
chmod 770 /sales/
chmod 770 /atten/
