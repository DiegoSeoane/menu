#Incio do bucle while
 do
 {
    ##Declaración de variables
    #

    $primo = "É primo"
    $noprimo = "Non é primo"
    $c=0;

    
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
exit 0