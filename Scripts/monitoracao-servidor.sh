
#!/bin/bash

resposta_http=$(curl --write-out %{http_code} --silent --output /dev/null http://localhost)

#echo $resposta_http

if [ $resposta_http -ne 200 ]
then
mail -s "Problema no servidor" brunopbcc@hotmail.com << del
Houve um problema  no servidor e os usuarios pararam de ter acesso ao conteudo web.
del


#	echo "Tudo esta ok com o servidor"
#	echo "Houve algum problema com o servidor, tentando reinicializar..."
#####################################################
#	Comando para Linux			    #
#	systemctl restart apache2		    #
#####################################################
#	Comando para WSL
#	/etc/init.d/apache2 start
#	echo "...Servidor reinicializado"
fi
