AddEventHandler('rconCommand', function(commandName, args)
  if commandName == "alert" then
        CancelEvent()
        print(args[1])
        local count = 0
        local message = ""
        for index, value in pairs( args ) do
          count = count + 1
          if count >= 1 then
            message = message .. " " .. args[count]
          end
        end
        TriggerClientEvent("lmc_web:alert",-1)
        TriggerClientEvent("pNotify:SendNotification", -1,{text = "<h2 style='text-align:center; margin: 10px 0 25px 0;'>SERVER ALERT</h2>"..message, type = "error", queue = "global", timeout = 20000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
    end
end)
