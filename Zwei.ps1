$MyEmail = "madman1237890026525@gmail.com"
$SMTP= "smtp.gmail.com"
$To = "madman1237890026525@gmail.com"
$Pass = "Madman009"
$Subject = "BRO!"
$Body = "WHAT UP MR.POWERSCRIPTS?"
$Creds = (Get-Credential -Credential "$MyEmail"), ($Pass | ConvertTo-SecureString -AsPlainText -Force)

Start-Sleep 2

Send-MailMessage -To $to -From $MyEmail -Subject $Subject -Body $Body -SmtpServer $SMTP -Credential $Creds -UseSsl -Port 587 -DeliveryNotificationOption never
