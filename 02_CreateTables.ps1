Param(
[string]$createTableScriptsDirectory
)
$createTableScriptsDirectory='directory'
cd $createTableScriptsDirectory
[System.IO.DirectoryInfo]$DirectoryInfo=New-object System.IO.DirectoryInfo $createTableScriptsDirectory | Sort-Object
foreach($f IN ($DirectoryInfo.GetFiles("*.sql"))) { .\vsql -h host -U user -d database -w password -f $f }
cd ..


