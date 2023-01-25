#!/bin/bash
echo "configurando ambiente..."

echo "Criando diretorios... 1/4"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuarios... 2/4"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios... 3/4"
useradd carlos -c 'Carlos' -s /bin/bash -m -G GRP_ADM
useradd maria -c 'Maria' -s /bin/bash -m -G GRP_ADM
useradd joao -c 'João' -s /bin/bash -m -G GRP_ADM

useradd debora -c 'Débora' -s /bin/bash -m -G GRP_VEN
useradd sebastiana -c 'Sebastiana' -s /bin/bash -m -G GRP_VEN
useradd roberto -c 'Roberto' -s /bin/bash -m -G GRP_VEN

useradd josefina -c 'Josefina' -s /bin/bash -m -G GRP_SEC
useradd amanda -c 'Amanda' -s /bin/bash -m -G GRP_SEC
useradd rogerio -c 'Rogério' -s /bin/bash -m -G GRP_SEC

echo "Garantindo permissões aos diretórios... 4/4"
chown root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Processo finalizado."
