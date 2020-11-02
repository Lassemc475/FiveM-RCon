local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")

AddEventHandler('rconCommand', function(commandName, args)
  if commandName == "alert" then
    CancelEvent()
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

  elseif commandName == "revive" then
    CancelEvent()
    local id = tonumber(args[1]);
    if id ~= nil then
      local source = vRP.getUserSource({id})
      if source then
        TriggerClientEvent("lmc_web:revive",source)
        TriggerClientEvent("pNotify:SendNotification", source,{text = "Du er blevet genoplivet af et staff medlem.", type = "error", queue = "global", timeout = 20000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
      end
    end

  end
end)
