#!/bin/bash

echo `clear`
echo "Welcome"
sair=true;
echo "1.English 2.Spanish 3.Galician"
read -p "Select a language" language

case $language in
    1)
    while $sair
    do
    menuen
    respuesta=$?
    options $respuesta


    done
    ;;
    2)
    while $sair
    do
    menues
    respuesta=$?
    opciones $respuesta


    done
    ;;
    3)
    while $sair
    do
    menugl
    respuesta=$?
    opcions $respuesta


    done
    ;;
esac

#functions
function menugl(){    
    echo "## Menu ##"
    echo "1.|Calculadora|"
    echo "2.|Usuario actual|"
    echo "3.|Linguaxe|"
    echo "4.||"
    echo "5.|Sair|"
    echo "____________"
    echo ""
    
    read -p "Escribe o numero que queras elexir: " num
    return $num
    
}
function menuen(){    
    echo "## Menu ##"
    echo "1.|Calculator|"
    echo "2.|Actual User|"
    echo "3.|Language|"
    echo "4.||"
    echo "5.|Exit|"
    echo "____________"
    echo ""
    
    read -p "Type the option number: " num
    return $num
    
}
function menues(){    
    echo "## Menu ##"
    echo "1.|Calculadora|"
    echo "2.|Usuario Actual|"
    echo "3.|Lenguaje|"
    echo "4.||"
    echo "5.|Salir|"
    echo "____________"
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
            echo "Usuario actual: " `who`
        ;;
        3)

        ;;
        4)
            echo "aaa"
        ;;
        5)
        echo ""
        echo "Ata pronto!"
        sleep 1
        echo `clear`
        sair=false;
        ;;
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
            echo "Actual User: " `who`
        ;;
        3)

        ;;
        4)
            echo "aaa"
        ;;
        5)

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
            echo "Usuario actual: " `who`
        ;;
        3)

        ;;
        4)
            echo "aaa"
        ;;
        5)

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
    echo "#Calculadora#"
    echo "|Suma|"
    echo "|Resta|"
    read -p "Que queres facer? " numcalc
    case $numcalc in
        1)
        read -p "Introduce o primeiro numero: " a
        read -p "Introduce o segundo numero: " b
        echo "$a + $b = " $(($a + $b))
        ;;
        2)
        read -p "Introduce o primeiro numero: " a
        read -p "Introduce o segundo numero: " b
        echo "$a - $b = " $(($a - $b))
        ;;
        *)
        echo "OPTION NOT FOUND"
        ;;
    esac
    sleep 1
}
function Calculadoraes(){
    echo "#Calculadora#"
    echo "|Suma|"
    echo "|Resta|"
    read -p "¿Que quieres hacer? " numcalc
    case $numcalc in
        1)
        read -p "Introduce el primer numero: " a
        read -p "Introduce el segundo numero: " b
        echo "$a + $b = " $(($a + $b))
        ;;
        2)
        read -p "Introduce el primer numero: " a
        read -p "Introduce el segundo numero: " b
        echo "$a - $b = " $(($a - $b))
        ;;
        *)
        echo "OPTION NOT FOUND"
        ;;
    esac
    sleep 1
}
function Calculator(){
    echo "#Calculator#"
    echo "|Addition|"
    echo "|Abstraction|"
    read -p "What do you want to do? " numcalc
    case $numcalc in
        1)
        read -p "Type the first number: " a
        read -p "Type the second number: " b
        echo "$a + $b = " $(($a + $b))
        ;;
        2)
        read -p "Type the first number: " a
        read -p "Type the second number: " b
        echo "$a - $b = " $(($a - $b))
        ;;
        *)
        echo "OPTION NOT FOUND"
        ;;
    esac
    sleep 1
}



