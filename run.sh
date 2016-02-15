#! /bin/bash

which pacman > /dev/null 2> /dev/null
if [ $? == 0 ]; then
    echo "Uoh! Usas ARCH, bien hecho!"
    
    which sbt > /dev/null 2> /dev/null
    if [ $? == 0 ]; then
	echo "Bien bien, tienes sbt instalado, POS ALA!"
	sbt run
    else
	echo "sbt no esta instalado"
	echo ""
	echo "Quieres instalar sbt? [y/n]"
	read txt
	if [ $txt == "y" ]; then
	    sudo pacman -S sbt

	    if [ $? == 0 ]; then
		echo "sbt instalado con exito"
		echo "Ejecutando \"sbt run\""
		sbt run
	    else
		echo "Fallo en la instalacion"
	    fi
	fi
    fi
else
    echo "No tienes ARCH instalado!?"
    echo "Pues ejecutare \"sbt run\" a ver que pasa"
    sbt run
    if [ $? != 0 ]; then
	echo "La he liado to parda"
    fi
fi
