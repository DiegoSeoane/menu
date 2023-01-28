
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

Write-Host "Intentos do xogador: " $contador