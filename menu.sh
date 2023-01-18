#!/bin/bash

echo `clear`
echo "             ________________________________________________________"
echo ""
echo "                                   
                  \ \        / / | |                         | |
                   \ \  /\  / ___| | ___ ___  _ __ ___   ___ | |
                    \ \/  \/ / _ | |/ __/ _ \|  _   _ \ / _ ||_|
                     \  /\  |  __| | (_| (_) | | | | | |  __/ _
                      \/  \/ \___|_|\___\___/|_| |_| |_|\___||_|"
echo "
"
echo "             ________________________________________________________"

sleep 1
echo `clear`
sair=true;
echo "  _________________________"
echo ""
echo "  █████████████████████████"
echo "  █####### LANGUAGES #####█"
echo "  █████████████████████████"
echo "  █ 1.      English       █"
echo "  █ 2.      Spanish       █"
echo "  █ 3.      Galician      █"
echo "  █████████████████████████"
echo "  _________________________"
echo ""
read -p "Select a language (Type the number): " language

### FUNCTIONS ###
function menugl(){
    echo "  _________________________"
    echo "" 
    echo "  █████████████████████████"   
    echo "  █######### Menu ########█"
    echo "  █████████████████████████"
    echo "  █ 1.    Calculadora     █"
    echo "  █ 2. Directorio Actual  █"
    echo "  █ 3.       Data         █"
    echo "  █ 4.  Crear Directorio  █"
    echo "  █ 5.      |Sair|        █"
    echo "  █████████████████████████"
    echo "  _________________________"
    echo ""
    
    read -p "Escribe o numero que queras elexir: " num
    return $num
    
}
function menuen(){
    echo "  _________________________"
    echo ""
    echo "  █████████████████████████"   
    echo "  █######### Menu ########█"
    echo "  █████████████████████████"
    echo "  █ 1.     Calculator     █"
    echo "  █ 2. Current Directory  █"
    echo "  █ 3.       Date         █"
    echo "  █ 4.  Create Directory  █"
    echo "  █ 5.      |Exit|        █"
    echo "  █████████████████████████" 
    echo "  _________________________"
    echo ""
    
    read -p "Type the option number: " num
    return $num
    
}
function menues(){ 
    echo "  _________________________"
    echo ""  
    echo "  █████████████████████████"  
    echo "  █######### Menu ########█"
    echo "  █████████████████████████"
    echo "  █ 1.    Calculadora     █"
    echo "  █ 2. Directorio Actual  █"
    echo "  █ 3.       Fecha        █"
    echo "  █ 4.  Crear Directorio  █"
    echo "  █ 5.      |Salir|       █"
    echo "  █████████████████████████" 
    echo "  _________________________"
    echo ""
    
    read -p "Type the option number: " num
    return $num
    
}
function opcions(){
    case $1 in
        1)        
            Calculadora
        ;;
        2)
            echo `clear`
            echo ""
            echo "___________________________________"
            echo ""
            echo "Directorio Actual: "
            echo `pwd`   
            echo "___________________________________"
            echo ""
            sleep 1
            echo "Volvendo ao menú..."
            sleep 2
            echo `clear`       
        ;;
        3)
            echo "__________________________________"
            echo ""
            echo `date`
            echo "__________________________________"
            echo ""
            sleep 1
            echo "Volvendo ao menú..."
            sleep 2
            echo `clear`
        ;;
        4)
            echo `clear`
            read -p "Escribe o nome do directorio: " dir
            echo `mkdir $dir`
            sleep 1
            echo `clear`
            echo "__________________________________"
            echo ""
            echo "» Creado directorio:  /" $dir
            echo ""
            echo "__________________________________"            
            sleep 2
            echo `clear`
            echo ""
            sleep 1
            echo "Volvendo ao menú..."
            sleep 2
            echo `clear`
        ;;
        5)
            echo ""
            echo "Ata pronto!"
            sleep 1
            echo `clear`
            sair=false;
        ;;        
        *)
            echo ""
            echo "Ata pronto!"
            sleep 1
            echo `clear`
            sair=false;
        ;;
    esac
}
function options(){
    case $1 in
        1)        
            Calculator
        ;;
        2)
            echo `clear`
            echo ""
            echo "___________________________________"
            echo ""
            echo "Current Directory: "
            echo `pwd`
            echo "___________________________________"
            echo ""
            sleep 1
            echo "Going back to the menu..."
            sleep 2
            echo `clear`  
        ;;
        3)
            echo "__________________________________"
            echo ""
            echo `date`
            echo "__________________________________"
            echo ""
            sleep 1
            echo "Going back to the menu..."
            sleep 2
            echo `clear`
        ;;
        4)
            echo `clear`
            read -p "Type the directory's name: " dir
            echo `mkdir $dir`
            sleep 1
            echo `clear`            
            echo "__________________________________"
            echo ""
            echo "» Directory created:  /" $dir
            echo ""
            echo "__________________________________"
            sleep 2
            echo `clear`
            echo ""
            sleep 1
            echo "Going back to the menu..."
            sleep 2
            echo `clear`   
        ;;
        5)
            echo ""
            echo "See you soon!"
            sleep 1
            echo `clear`
            sleep 1
            echo `clear`
            sair=false;
        ;;
        *)
            echo ""
            echo "See you soon!"
            sleep 1
            echo `clear`
            sair=false;
        ;;
    esac
}
function opciones(){
    case $1 in
        1)        
            Calculadoraes
        ;;
        2)
            echo `clear`
            echo ""
            echo "___________________________________"
            echo ""
            echo "Directorio Actual: "
            echo `pwd`
            echo "___________________________________"
            echo ""
            sleep 1
            echo "Volviendo al menú..."
            sleep 2
            echo `clear`  
        ;;
        3)
            echo "__________________________________"
            echo ""
            echo `date`
            echo "__________________________________"
            echo ""
            sleep 1
            echo "Volviendo al menú..."
            sleep 2
            echo `clear`
            echo ""
            sleep 1
            echo "Volviendo al menú..."
            sleep 2
            echo `clear`          
        ;;
        4)
            echo `clear`
            read -p "Escribe el nombre del directorio: " dir
            echo `mkdir $dir`
            sleep 1
            echo `clear`
            echo "__________________________________"
            echo ""
            echo "» Creado directorio:  /" $dir
            echo ""
            echo "__________________________________"
            sleep 2
            echo `clear`
            echo ""
            echo "Volviendo al menú..."
            sleep 2
            echo `clear`   
        ;;
        5)
            echo ""
            echo "Hasta pronto!"
            sleep 1
            echo `clear`
            sair=false;
        ;;
        *)
            echo ""
            echo "Hasta pronto!"
            sleep 1
            echo `clear`
            sair=false;
        ;;
    esac
}
function Calculadora(){
    echo `clear`
    echo "  █████████████████████████"
    echo "  █######Calculadora######█"
    echo "  █████████████████████████"
    echo "  █                       █"
    echo "  █ 1.     + Suma         █"
    echo "  █. . . . . . . . . . . .█"
    echo "  █ 2.     - Resta        █"
    echo "  █                       █"
    echo "  █████████████████████████"
    echo ""
    read -p "Que queres facer? " numcalc
    case $numcalc in
        1)
        echo `clear`
        echo "          » SUMA"
        echo ""
        read -p "Introduce o primeiro numero: " a
        read -p "Introduce o segundo numero: " b
        echo ""
        echo "_________________________"
        echo ""
        echo "$a + $b = " $(($a + $b))        
        echo "_________________________"
        echo ""        
        ;;
        2)
        echo `clear`
        echo "          » RESTA"
        echo ""
        read -p "Introduce o primeiro numero: " a
        read -p "Introduce o segundo numero: " b
        echo ""
        echo "_________________________"
        echo ""
        echo "$a - $b = " $(($a - $b))
        echo "_________________________"
        echo ""
        ;;
        *)
        echo `clear`
        echo ""
        echo "_________________________"
        echo ""
        echo "OPTION NOT FOUND"        
        echo "_________________________"
        echo ""
        ;;
    esac
    sleep 1
}
function Calculadoraes(){
    echo `clear`
    echo "  █████████████████████████"
    echo "  █######Calculadora######█"
    echo "  █████████████████████████"
    echo "  █                       █"
    echo "  █ 1.     + Suma         █"
    echo "  █. . . . . . . . . . . .█"
    echo "  █ 2.     - Resta        █"
    echo "  █                       █"
    echo "  █████████████████████████"
    echo ""
    read -p "¿Que quieres hacer? " numcalc
    case $numcalc in
        1)
        echo `clear`
        echo "          » SUMA"
        echo ""
        read -p "Introduce el primer numero: " a
        read -p "Introduce el segundo numero: " b
        echo ""
        echo "_________________________"
        echo ""
        echo "$a + $b = " $(($a + $b))        
        echo "_________________________"
        echo ""
        ;;
        2)
        echo `clear`
        echo "          » RESTA"
        echo ""
        read -p "Introduce el primer numero: " a
        read -p "Introduce el segundo numero: " b
        echo ""
        echo "_________________________"
        echo ""
        echo "$a - $b = " $(($a - $b))        
        echo "_________________________"
        echo ""
        ;;
        *)
        echo `clear`
        echo ""
        echo "_________________________"
        echo ""
        echo "OPTION NOT FOUND"        
        echo "_________________________"
        echo ""
        ;;
    esac
    sleep 1
}
function Calculator(){
    echo `clear`
    echo "  █████████████████████████"
    echo "  █######Calculator#######█"
    echo "  █████████████████████████"
    echo "  █                       █"
    echo "  █ 1.  +  Addition       █"
    echo "  █. . . . . . . . . . . .█"
    echo "  █ 2.  - Abstraction     █"
    echo "  █                       █"
    echo "  █████████████████████████"
    echo ""
    read -p "What do you want to do? " numcalc
    case $numcalc in
        1)
        echo `clear`
        echo "        » ADDITION"
        echo ""
        read -p "Type the first number: " a
        read -p "Type the second number: " b
        echo ""
        echo "_________________________"
        echo ""
        echo "$a + $b = " $(($a + $b))        
        echo "_________________________"
        echo ""
        ;;
        2)
        echo `clear`
        echo "       » ABSTRACTION"
        echo ""
        read -p "Type the first number: " a
        read -p "Type the second number: " b
        echo ""
        echo "_________________________"
        echo ""
        echo "$a - $b = " $(($a - $b))
        echo "_________________________"
        echo ""
        ;;
        *)
        echo `clear`
        echo ""
        echo "_________________________"
        echo ""
        echo "OPTION NOT FOUND"        
        echo "_________________________"
        echo ""
        ;;
    esac
    sleep 1
}



### PROGRAM ###

case $language in
    1) #English
    while $sair
    do
    menuen
    respuesta=$?
    options $respuesta


    done
    ;;
    2) #Spanish
    while $sair
    do
    menues
    respuesta=$?
    opciones $respuesta


    done
    ;;
    3) #Galician
    while $sair
    do
    menugl
    respuesta=$?
    opcions $respuesta

    done
    ;;
esac



