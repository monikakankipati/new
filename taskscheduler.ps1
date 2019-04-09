$action = new-scheduledtaskaction -Execute 'powershell.exe' -Argument  'C:\desktop\doll.xml'
$trigger = New-ScheduledTaskTrigger -Once -At 3pm
Register-ScheduledTask -Action $Action -Trigger $Trigger -TaskName "xml file" -Description "iam here"