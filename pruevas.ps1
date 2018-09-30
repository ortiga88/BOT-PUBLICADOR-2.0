cls

$csv = get-content -delimiter "|" "$PSScriptRoot\asset\articulo.csv"


$lineas = $csv.Count - 1

$contador1 = 0


while($contador1 -lt $lineas){


while($true){


 $url = $csv.Item($contador1).Split(",")[0] 
 $csv.Item($contador1).Split(",")[1] 
 $csv.Item($contador1).Split(",")[2] 
 $csv.Item($contador1).Split(",")[3] 
 $csv.Item($contador1).Split(",")[4] 
 $csv.Item($contador1).Split(",")[5] 
 $csv.Item($contador1).Split(",")[6] 
 $csv.Item($contador1).Split(",")[7] 
 $csv.Item($contador1).Split(",")[8] 
 


 break



}


$contador1++


}


