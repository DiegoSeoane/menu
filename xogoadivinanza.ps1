$min = Read-Host "Introduce o número máis pequeno"
$max = Read-Host "Introduce o número máis grande"
$random = Get-Random -Minimum $min -Maximum $max
$contador=0

$random

do{
    $num= Read-Host "Acerta o numero"
    $contador++
    if($num -lt $random)
    {
        echo "O número é maior"
    }
    elseif($num -gt $random)
    {
        echo "O número e maior"
    }
    else{
        echo "Número correcto, noraboa."
    }
}
while($num -ne $random)