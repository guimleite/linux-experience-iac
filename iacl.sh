#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
mkdir /socios

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
groupadd GRP_SOCIOS

echo "Criando usuários..."

useradd guilherme -m -s /bin/bash -G GRP_SOCIOS
useradd patricia -m -s /bin/bash -G GRP_SOCIOS

useradd roberto -m -s /bin/bash -G GRP_ADM
useradd pedro -m -s /bin/bash -G GRP_ADM
useradd paulo -m -s /bin/bash -G GRP_ADM

useradd rodrigo -m -s /bin/bash -G GRP_VEN
useradd giovana -m -s /bin/bash -G GRP_VEN
useradd camila -m -s /bin/bash -G GRP_VEN

useradd alberto -m -s /bin/bash -G GRP_SEC
useradd miguel -m -s /bin/bash -G GRP_SEC
useradd marcos -m -s /bin/bash -G GRP_SEC

echo "Definindo permissões sob diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:GRP_SOCIOS /socios

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 770 /socios
chmod 777 /publico

echo "Fim..."
