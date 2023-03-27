#!bin/bash

CAMINHO_BACKUP="/mnt/c/Users/Bruno Coelho/Desktop"
cd ..
#cd $CAMINHO_BACKUP
#echo $CAMINHO_BACKUP Acessado com sucesso

if [ ! -d backup ]
then
	mkdir backup
	echo "Diretório de backup criado"
fi

mysqldump -u root $1 > "$CAMINHO_BACKUP/backup/$1.sql"
if [ $? -eq 0 ]
then
	echo "Backup realizado com sucesso"
else
	echo "Houve um problema no backup"
fi
