local exec = identifyexecutor()
local hwid = game:GetService("RbxAnalyticsService"):GetClientId()

setclipboard("**Executor:** ``"..exec.."``\n**Hwid:** ``"..hwid.."``")
   
   game.StarterGui:SetCore("SendNotification",  {
    Title = "Please Hit CTRL + V";
    Text = "In Car's DMS";
    Duration = 5;
    Callback = NotificationBindable;
   })
