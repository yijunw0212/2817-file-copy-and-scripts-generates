Param(
[string]$SourceDirectory
,[string]$DestinationDirectory
,[string]$TargetFileMask
)


foreach ($filemask in get-content masklist.txt)
{
$powershellcommandDirectory ='direcotry'
$SourceDirectory =$powershellcommandDirectory+'\'+$filemask
$TargetFileMask='directory2'+"$filemask"+'\'+'generate'+"$filemask"+'scriptArchive'+'.ps1'

cd "$SourceDirectory"
powershell.exe -f $TargetFileMask
cd $powershellcommandDirectory
}