$UserName = Get-WmiObject Win32_Process -Filter "Name='explorer.exe'" |
                       ForEach-Object { $_.GetOwner() } |
                       Select-Object -Unique -Expand User

$currentUserEmail = "$UserName" + "@domain.com"
$Mailbody += "INSERT MAIL BODY"
$MailSubject = "INSERT SUBJECT" 
$SmtpClient = New-Object system.net.mail.smtpClient 
$SmtpClient.host = "INSERT MAIL SERVER" 
$MailMessage = New-Object system.net.mail.mailmessage
$MailMessage.from = "INSERT FROM ADDRESS"
$MailMessage.To.add("$currentUserEmail")
$MailMessage.Subject = $MailSubject
$MailMessage.Body = $MailBody
$SmtpClient.Send($MailMessage)
