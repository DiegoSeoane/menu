##  Creamos as funcions
#

## EXERCICIO PRIMOS
#
    function exePrimo {

        Clear-Host 
            #Incio do bucle while
        do
        {
            ##Declaración de variables
            #

            $primo = "É primo"
            $noprimo = "Non é primo"
            $c=0;

            Write-Host "Pulsa 0 para volver ao menú"
            $num = Read-Host "Introduce un numero: "
            
            for($i = 1; $i -le $num; $i++)             #Inicio bucle for
            {
                if(($num % $i) -eq 0)
                {
                    $c++
                }
                
            }   #Peche do bucle for


                #Condicións para ser primo

                if(($c -le 2) -and ($c -ne 1)-and ($c -ne 0)-and ($c -ne ""))
                {
                    $primo
                }        
                
                else
                {
                    $noprimo
                }
        
            }
        while($num -ne 0) #Peche do bucle while  
        
        Clear-Host 
    }

## EXERCICIO ADIVIÑANZA
#
    function exeAdivinanza {
        Clear-Host 
        ## Variables
        #

        $min = Read-Host "Introduce o número máis pequeno"
        $max = Read-Host "Introduce o número máis grande"
        $random = Get-Random -Minimum $min -Maximum $max
        $contador=0

        #$random            # <-Para facer probas
        
        ## Inicializacion do bucle for
        #

        ## O programa pide un número ao usuario, se o número é maior imprimirá "O número é maior"
        #  en caso contrario, imprimirá "O número é menor"
        #
        #  Se sumará 1 á variable contador por cada intento que non sexa correcto
        #
        #  Cando se acerte o número imprimirá unha mensaxe de noraboa e finalizará o bucle, amosando
        #  o numero de intentos feitos polo xogador
        #
        do{
            $num= Read-Host "Acerta o numero"
            $contador++
            if($num -lt $random)
            {
                Write-Host "O número é maior"
            }
            elseif($num -gt $random)
            {
                Write-Host "O número é menor"
            }
            else{
                Write-Host "Número correcto, noraboa."
            }
        }
        while($num -ne $random)

        Clear-Host        

        Write-Host "Intentos do xogador: " $contador

        Start-Sleep -Seconds 2   

        Clear-Host       
        
}

## EXERCICIO LISTA
#
    function exeLista {
        #Inicializacion das variables
        ###
        [System.Collections.Generic.List[int]]$lista = @()

        Clear-Host 
        ##Inicializacion do bucle while
        #
        Write-Host "Pulsa 0 para finalizar a lista"
        do {
            
            $num = Read-Host "Introduce un número á lista"

            if ($num -ne 0) {               #si o numero e igual a 0, non se añade á lista
                $lista.add($num)
            }    
        } until ($num -eq 0)


        Clear-Host         #limpamos pantalla

        Write-Host "Datos da lista:"

        $lista |Sort-Object     #ordenación da lista

        Start-Sleep -Seconds 2
        Clear-Host 
    }

## EXERCICIO FACTORIZACION
#
    function exeFactorizacion {
        [System.Collections.Generic.List[int]]$lista = @()

        ## Variables
        #

        $div=2        
        $num = Read-Host "Introduce o número a factorizar"

        ## Creamos unha variable que sexa o divisor
        #
        ## Dentro dun bucle while facemos que si o resto non é igual a 0
        #  se lle sume 1 ao divisor, o bucle continúa ata que o numero sexa igual a 1

        ## Bucle
        #
        while ($num -ne 1) {

            if ($num % $div -eq 0) {
                
                $lista.add($div)
                $num = $num / $div
            }
            else
            {
                $div++                
            }
        }   
        ## Finalización do bucle
        #     


        $lista              ## Non se me ocurre como imprimilo
                            #  da maneira que está exposta no exercicio
        
        Start-Sleep -Seconds 2
        Clear-Host 
    }


## Iniciamos un switch dentro dun bucle while, para elexir
#  que exercicio queremos facer
#

do {
    Write-Host  "1. É primo"
                "2. Adiviñanza"
                "3. Lista"
                "4. Factorización"
                "Pulsa 0 para sair"
                ""

    $opcion = Read-Host "Elixe un exercicio"

    switch ($opcion){
        1 {exePrimo}    
        2 {exeAdivinanza}
        3 {exeLista}
        4 {exeFactorizacion}
        0 {"Ata logo!"}
        default {"Non existe esta opción"}    
    }

} while ($opcion -ne 0)