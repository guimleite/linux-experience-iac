#!/bin/bash

echo "Criando usuários do sistema..."

useradd guest10 -c "User convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd guest10 -e

useradd guest11 -c "User convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd guest10 -e

useradd guest12 -c "User convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd guest10 -e

useradd guest13 -c "User convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd guest10 -e

echo "Finalizado!!" 


