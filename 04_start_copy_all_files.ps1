 Param(
[string]$ScriptPath
,[string]$MaskListPath
)
 $MaskListPath ='directory'
 
 foreach ($filemask in get-content $MaskListPath'masklist.txt')
{
 $ScriptPath = $MaskListPath+$filemask
 cd $ScriptPath
 [System.IO.DirectoryInfo]$DirectoryInfo=New-object System.IO.DirectoryInfo $ScriptPath | Sort-Object
 foreach($f IN ($DirectoryInfo.GetFiles("*.sql"))) { .\vsql -h host -U userr -d database -w password -f $f }
}