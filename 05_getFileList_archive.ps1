Param(
[string]$SourceDirectory
,[string]$DestinationDirectory
,[string]$TargetFileMask
)


foreach ($filemask in get-content masklist.txt)
{
$powershellcommandDirectory ='directory'
$SourceDirectory ='directory2'
$DestinationDirectory = 'direcotry3\'+"$filemask"+'\'+"$filemask"+'FileListArchive.txt'
$TargetFileMask = $filemask+'2016'

cd "$SourceDirectory"
Get-childitem -name -filter $TargetFileMask*.txt | out-file "$DestinationDirectory"
cd $powershellcommandDirectory
}