Param(
[string]$filenamewithoutextension
)

foreach ($filename in get-content .\nlcknFileList.txt)
{
$filenamewithoutextension = $filename.replace('.txt','')
"
create table scripts here
" | out-file -Encoding Default .\$filenamewithoutextension.sql

}
