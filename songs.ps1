$xmlfilepath="d:\ps\song.xml"
psedit $xmlfilepath
$songxml = [xml](Get-Content $xmlfilepath) 


$songxml.SelectNodes("//title")
$songxml.SelectSingleNode("//song[1]") 

$songxml.catalog.song|Format-Table

#to update a song
$songxml.catalog.song[0].id="bk201"
$songxml.catalog.song[0].title="song312"
$songxml.catalog.song[0].genre="young"
$songxml.catalog.song[0].views="20000"
$songxml.catalog.song[0].publishdate="10-10-2010"


$xmlfilepathnew="D:\ps\song.xml"
$songxml.save($xmlfilepathnew)
psedit $xmlfilepathnew