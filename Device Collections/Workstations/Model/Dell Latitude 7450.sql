select SMS_R_SYSTEM.ResourceID,SMS_R_SYSTEM.ResourceType,SMS_R_SYSTEM.Name,SMS_R_SYSTEM.SMSUniqueIdentifier,SMS_R_SYSTEM.ResourceDomainORWorkgroup,SMS_R_SYSTEM.Client 
from SMS_R_System inner join SMS_G_System_COMPUTER_SYSTEM 
on SMS_G_System_COMPUTER_SYSTEM.ResourceId = SMS_R_System.ResourceId 
where SMS_G_System_COMPUTER_SYSTEM.Model like "%7450%"
