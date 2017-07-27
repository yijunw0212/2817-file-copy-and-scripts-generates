Param(
[string]$filenamewithoutextension
)

foreach ($filename in get-content .\nlcknFileListArchive.txt)
{
$filenamewithoutextension = $filename.replace('.txt','')
"
create table script here
" | out-file -Encoding Default .\$filenamewithoutextension.sql

}
