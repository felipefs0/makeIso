#!/usr/bin/env bash
# escrito por felipe silva o calvinista luterano
# 21/07/2020
#################################
echo "--------------------------------------------------"
echo "---          MakeIso by: felipe silva          ---"
echo "--------------------------------------------------"
printf "Diretório: ";
read dir
printf "Nome: ";
read name
echo "Compactando os arquivos..."
tar -zcf $name.tar $dir
echo "Criando arquivo iso..."
dd if=$name.tar of=/home/$USER/$name.iso status=progress
rm $name.tar
echo "Tudo ok =D"
