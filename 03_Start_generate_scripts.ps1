Param(
[string]$SourceDirectory
,[string]$DestinationDirectory
,[string]$TargetFileMask
)


foreach ($filemask in get-content filemask.txt)
{
$powershellcommandDirectory ='directory'
$SourceDirectory =$powershellcommandDirectory+'\'+$filemask
$TargetFileMask='directory2'+"$filemask"+'\'+'generate'+"$filemask"+'script'+'.ps1'

cd "$SourceDirectory"
powershell.exe -f $TargetFileMask
cd $powershellcommandDirectory
}