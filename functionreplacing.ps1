﻿function returnstring($p,$p2)
{
    $p=$p.replace("h","H")
    $p2=$p2.replace("world","wait!")
    $x=$p+" "+$p2
    return $x
}
write-host "result:"
returnstring -p "hello" -p2 "world"

























































































