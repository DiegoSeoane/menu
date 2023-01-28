#Inicializacion das variables
###
[System.Collections.Generic.List[int]]$lista = @()


##Inicializacion do bucle while
#

do {
    $num = Read-Host "Introduce un número á lista"

    if ($num -ne 0) {               #si o numero e igual a 0, non se añade á lista
        $lista.add($num)
    }    
} until ($num -eq 0)


Clear-Host         #limpamos pantalla

Write-Host "Datos da lista:"

$lista |Sort-Object     #ordenación da lista