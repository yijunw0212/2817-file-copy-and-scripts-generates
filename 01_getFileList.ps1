Param(
[string]$SourceDirectory
,[string]$DestinationDirectory
,[string]$TargetFileMask
)


foreach ($filemask in get-content filemask.txt)
{
$powershellcommandDirectory ='directory1'
$SourceDirectory ='directory2'
$DestinationDirectory = 'directory3'+"$filemask"+'\'+"$filemask"+'FileList.txt'
$TargetFileMask = $filemask+'2016'

cd "$SourceDirectory"
Get-childitem -name -filter $TargetFileMask*.txt | out-file "$DestinationDirectory"
cd $powershellcommandDirectory
}