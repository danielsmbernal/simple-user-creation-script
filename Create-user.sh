#!/bin/bash

echo "CREATING USERS"

useradd guest1 -m -s /bin/bash -c "Guest user" -p $(openssl passwd -6 Senha123)
passwd -e guest1

useradd guest2 -m -s /bin/bash -c "Guest user" -p $(openssl passwd -6 Senha123)
passwd -e guest2

useradd guest3 -m -s /bin/bash -c "Guest user" -p $(openssl passwd -6 Senha123)
passwd -e guest3

useradd guest4 -m -s /bin/bash -c "Guest user" -p $(openssl passwd -6 Senha123)
passwd -e guest4

echo "END SCRIPT"
