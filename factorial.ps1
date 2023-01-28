

[System.Collections.Generic.List[int]]$lista = @()

## Variables
#

$div=2

$num = Read-Host "Introduce o número a factorizar"

## Creamos unha variable que sexa o divisor
#
## Dentro dun bucle while facemos que si o divison non sexa igual a 0
#  se lle sume 1, o bucle continúa ata que o numero sexa igual a 1

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


        $lista      ## Non se me ocurre como imprimilo
                    #  da maneira que está exposta no exercicio