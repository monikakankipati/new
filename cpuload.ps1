



Get-WmiObject win32_processor | select LoadPercentage  |fl


Get-Counter -ListSet *memory* | Select-Object -ExpandProperty  Counter

#Get all processes with a working set greater than a specified size


Get-Process | Where-Object {$_.WorkingSet -lt 20000000}
Get-Process | Where-Object {$_.WS -gt 200000}


#Get all available data about one or more processes
Get-Process winword, explorer | Format-List


#Get modules loaded with the specified process
Get-Process SQL* -module

#Add a property to the standard Get-Process output display

Get-Process powershell_ise | Format-Table `
    @{Label = "NPM(K)"; Expression = {[int]($_.NPM / 1024)}},
    @{Label = "PM(K)"; Expression = {[int]($_.PM / 1024)}},
    @{Label = "WS(K)"; Expression = {[int]($_.WS / 1024)}},
    @{Label = "VM(M)"; Expression = {[int]($_.VM / 1MB)}},
    @{Label = "CPU(s)"; Expression = {if ($_.CPU) {$_.CPU.ToString("N")}}},
    Id, MachineName, ProcessName -AutoSize
    